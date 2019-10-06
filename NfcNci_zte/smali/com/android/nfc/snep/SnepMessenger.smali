.class public Lcom/android/nfc/snep/SnepMessenger;
.super Ljava/lang/Object;
.source "SnepMessenger.java"


# static fields
.field private static final DBG:Z = false

.field private static final HEADER_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnepMessenger"


# instance fields
.field final mFragmentLength:I

.field final mIsClient:Z

.field final mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;


# direct methods
.method public constructor <init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 0
    .param p1, "isClient"    # Z
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 43
    iput p3, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    .line 44
    iput-boolean p1, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V

    .line 281
    return-void
.end method

.method public getMessage()Lcom/android/nfc/snep/SnepMessage;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/nfc/snep/SnepException;
        }
    .end annotation

    .line 135
    move-object/from16 v1, p0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v2, v1, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v2, v0

    .line 136
    .local v2, "buffer":Ljava/io/ByteArrayOutputStream;
    iget v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    new-array v3, v0, [B

    .line 138
    .local v3, "partial":[B
    const/4 v4, 0x0

    .line 139
    .local v4, "requestSize":I
    const/4 v5, 0x0

    .line 140
    .local v5, "readSize":I
    const/4 v6, 0x0

    .line 141
    .local v6, "requestVersion":B
    const/4 v7, 0x0

    .line 142
    .local v7, "requestField":B
    const/4 v8, 0x0

    .line 145
    .local v8, "doneReading":Z
    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    const/4 v9, -0x1

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "fieldContinue":B
    const/16 v10, 0x7f

    .line 150
    .local v10, "fieldReject":B
    move v11, v0

    goto :goto_0

    .line 149
    .end local v0    # "fieldContinue":B
    .end local v10    # "fieldReject":B
    :cond_0
    const/16 v0, -0x80

    .line 150
    .restart local v0    # "fieldContinue":B
    move v11, v0

    move v10, v9

    .line 153
    .end local v0    # "fieldContinue":B
    .restart local v10    # "fieldReject":B
    .local v11, "fieldContinue":B
    :goto_0
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v12

    .line 155
    .local v12, "size":I
    if-ltz v12, :cond_11

    .line 162
    const/4 v0, 0x6

    if-ge v12, v0, :cond_2

    .line 164
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    goto :goto_1

    .line 168
    :cond_1
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 171
    :goto_1
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_2

    .line 172
    :catch_0
    move-exception v0

    .line 175
    :goto_2
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Invalid fragment from sender."

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_2
    add-int/lit8 v0, v12, -0x6

    .line 178
    .end local v5    # "readSize":I
    .local v0, "readSize":I
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 181
    new-instance v13, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v13, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v13, "dataIn":Ljava/io/DataInputStream;
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 183
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    .line 184
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 188
    and-int/lit16 v14, v6, 0xf0

    shr-int/lit8 v14, v14, 0x4

    const/4 v15, 0x1

    if-eq v14, v15, :cond_5

    .line 189
    sget-boolean v14, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    const/16 v15, -0x1f

    if-eqz v14, :cond_3

    .line 190
    invoke-static {v15}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    goto :goto_3

    .line 193
    :cond_3
    sget-boolean v14, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v14, :cond_4

    .line 194
    invoke-static {v15}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    goto :goto_3

    .line 198
    :cond_4
    new-instance v5, Lcom/android/nfc/snep/SnepMessage;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v5

    move v15, v6

    move/from16 v16, v7

    invoke-direct/range {v14 .. v19}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v5

    .line 204
    :cond_5
    :goto_3
    sget-boolean v14, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v14, :cond_c

    .line 205
    iget-boolean v14, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v14, :cond_7

    const/16 v14, -0x80

    if-eq v7, v14, :cond_6

    const/16 v14, -0x7f

    if-eq v7, v14, :cond_6

    const/16 v14, -0x40

    if-ne v7, v14, :cond_7

    .line 209
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 211
    :cond_7
    iget-boolean v14, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v14, :cond_8

    const/4 v14, 0x3

    if-ne v7, v14, :cond_8

    .line 213
    const/16 v14, -0x3e

    invoke-static {v14}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 217
    :cond_8
    iget-boolean v14, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v14, :cond_9

    const/4 v14, 0x2

    if-ne v7, v14, :cond_9

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 222
    :cond_9
    iget-boolean v14, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    const/16 v15, 0x400

    if-eqz v14, :cond_a

    if-le v4, v15, :cond_a

    .line 224
    new-instance v5, Lcom/android/nfc/snep/SnepMessage;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v4

    invoke-direct/range {v14 .. v19}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v5

    .line 227
    :cond_a
    iget-boolean v14, v1, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v14, :cond_c

    if-gt v4, v15, :cond_b

    if-ne v4, v9, :cond_c

    .line 230
    :cond_b
    new-instance v5, Lcom/android/nfc/snep/SnepMessage;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v4

    invoke-direct/range {v14 .. v19}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v5

    .line 234
    :cond_c
    if-le v4, v0, :cond_d

    .line 236
    iget-object v9, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v11}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v14

    invoke-interface {v9, v14}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 242
    .end local v0    # "readSize":I
    .local v9, "readSize":I
    :goto_4
    move v9, v0

    goto :goto_5

    .line 238
    .end local v9    # "readSize":I
    .restart local v0    # "readSize":I
    :cond_d
    const/4 v8, 0x1

    goto :goto_4

    .line 242
    .end local v0    # "readSize":I
    .restart local v9    # "readSize":I
    :goto_5
    if-nez v8, :cond_10

    .line 244
    :try_start_1
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v0

    move v12, v0

    .line 246
    if-ltz v12, :cond_f

    .line 254
    add-int/2addr v9, v12

    .line 255
    invoke-virtual {v2, v3, v5, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 256
    if-ne v9, v4, :cond_e

    .line 257
    const/4 v0, 0x1

    .line 267
    .end local v8    # "doneReading":Z
    .local v0, "doneReading":Z
    move v8, v0

    .end local v0    # "doneReading":Z
    .restart local v8    # "doneReading":Z
    :cond_e
    goto :goto_5

    .line 248
    :cond_f
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 251
    goto :goto_6

    .line 249
    :catch_1
    move-exception v0

    .line 252
    :goto_6
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 260
    :catch_2
    move-exception v0

    move-object v5, v0

    .line 262
    .local v5, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v14

    invoke-interface {v0, v14}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 265
    goto :goto_7

    .line 263
    :catch_3
    move-exception v0

    .line 266
    :goto_7
    throw v5

    .line 272
    .end local v5    # "e":Ljava/io/IOException;
    :cond_10
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0
    :try_end_5
    .catch Landroid/nfc/FormatException; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    .line 273
    :catch_4
    move-exception v0

    .line 274
    .local v0, "e":Landroid/nfc/FormatException;
    const-string v5, "SnepMessenger"

    const-string v14, "Badly formatted NDEF message, ignoring"

    invoke-static {v5, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    new-instance v5, Lcom/android/nfc/snep/SnepException;

    invoke-direct {v5, v0}, Lcom/android/nfc/snep/SnepException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 157
    .end local v0    # "e":Landroid/nfc/FormatException;
    .end local v9    # "readSize":I
    .end local v13    # "dataIn":Ljava/io/DataInputStream;
    .local v5, "readSize":I
    :cond_11
    :try_start_6
    iget-object v0, v1, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v10}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 160
    goto :goto_8

    .line 158
    :catch_5
    move-exception v0

    .line 161
    :goto_8
    new-instance v0, Ljava/io/IOException;

    const-string v9, "Error reading SNEP message."

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    .locals 10
    .param p1, "msg"    # Lcom/android/nfc/snep/SnepMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v0

    .line 50
    .local v0, "buffer":[B
    iget-boolean v1, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 51
    const/16 v1, -0x80

    .local v1, "remoteContinue":B
    goto :goto_0

    .line 53
    .end local v1    # "remoteContinue":B
    :cond_0
    move v1, v2

    .line 58
    .restart local v1    # "remoteContinue":B
    :goto_0
    array-length v3, v0

    iget v4, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 59
    .local v3, "length":I
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 61
    .local v2, "tmpBuffer":[B
    iget-object v4, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v4, v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 63
    array-length v4, v0

    if-ne v3, v4, :cond_1

    .line 64
    return-void

    .line 68
    :cond_1
    move v4, v3

    .line 69
    .local v4, "offset":I
    const/4 v5, 0x6

    new-array v6, v5, [B

    .line 70
    .local v6, "responseBytes":[B
    iget-object v7, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 73
    :try_start_0
    invoke-static {v6}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v7
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    .local v7, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    nop

    .line 75
    nop

    .line 79
    invoke-virtual {v7}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v8

    if-ne v8, v1, :cond_6

    .line 84
    sget-boolean v8, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v8, :cond_2

    .line 85
    iget-boolean v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v8, :cond_2

    sget v8, Lcom/android/nfc/sneptest/DtaSnepClient;->mTestCaseId:I

    if-ne v8, v5, :cond_2

    .line 86
    array-length v5, v0

    sub-int/2addr v5, v4

    iget v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 87
    add-int v5, v4, v3

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 89
    iget-object v5, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v5, v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 90
    add-int/2addr v4, v3

    .line 92
    iget-object v5, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 95
    :try_start_1
    invoke-static {v6}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v7, v5

    .line 98
    nop

    .line 100
    invoke-virtual {v7}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v5

    if-ne v5, v1, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 102
    return-void

    .line 96
    :catch_0
    move-exception v5

    .line 97
    .local v5, "e":Landroid/nfc/FormatException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid SNEP message"

    invoke-direct {v8, v9, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 108
    .end local v5    # "e":Landroid/nfc/FormatException;
    :cond_2
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 109
    array-length v5, v0

    sub-int/2addr v5, v4

    iget v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 110
    add-int v5, v4, v3

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 112
    iget-object v5, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v5, v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 114
    sget-boolean v5, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v5, :cond_4

    .line 115
    iget-boolean v5, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-nez v5, :cond_4

    sget v5, Lcom/android/nfc/sneptest/ExtDtaSnepServer;->mTestCaseId:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_4

    .line 116
    iget-object v5, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 118
    :try_start_2
    invoke-static {v6}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5
    :try_end_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    .end local v7    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    .local v5, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    nop

    .line 123
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v7

    if-ne v7, v1, :cond_3

    .line 124
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->close()V

    .line 125
    return-void

    .line 130
    :cond_3
    move-object v7, v5

    goto :goto_2

    .line 119
    .end local v5    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    .restart local v7    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_1
    move-exception v5

    .line 120
    .local v5, "e":Landroid/nfc/FormatException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid SNEP message"

    invoke-direct {v8, v9, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 130
    .end local v5    # "e":Landroid/nfc/FormatException;
    :cond_4
    :goto_2
    add-int/2addr v4, v3

    goto :goto_1

    .line 132
    :cond_5
    return-void

    .line 80
    :cond_6
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid response from server ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v7}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    .end local v7    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_2
    move-exception v5

    .line 75
    .restart local v5    # "e":Landroid/nfc/FormatException;
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid SNEP message"

    invoke-direct {v7, v8, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
