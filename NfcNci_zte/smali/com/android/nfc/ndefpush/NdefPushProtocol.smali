.class public Lcom/android/nfc/ndefpush/NdefPushProtocol;
.super Ljava/lang/Object;
.source "NdefPushProtocol.java"


# static fields
.field public static final ACTION_BACKGROUND:B = 0x2t

.field public static final ACTION_IMMEDIATE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "NdefMessageSet"

.field private static final VERSION:B = 0x1t


# instance fields
.field private mActions:[B

.field private mMessages:[Landroid/nfc/NdefMessage;

.field private mNumMessages:I


# direct methods
.method public constructor <init>(Landroid/nfc/NdefMessage;B)V
    .locals 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "action"    # B

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    .line 45
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 46
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    const/4 v2, 0x0

    aput-byte p2, v1, v2

    .line 47
    new-array v0, v0, [Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 48
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aput-object p1, v0, v2

    .line 49
    return-void
.end method

.method public constructor <init>([B)V
    .locals 9
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 68
    .local v0, "buffer":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    .local v1, "input":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 77
    .local v2, "version":B
    nop

    .line 76
    nop

    .line 79
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 86
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 90
    nop

    .line 91
    iget v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-eqz v3, :cond_2

    .line 97
    iget v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 98
    iget v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    new-array v3, v3, [Landroid/nfc/NdefMessage;

    iput-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 99
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v3, v4, :cond_1

    .line 102
    :try_start_2
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v4, v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 106
    nop

    .line 110
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    .local v4, "length":I
    nop

    .line 113
    nop

    .line 115
    new-array v5, v4, [B

    .line 119
    .local v5, "bytes":[B
    :try_start_4
    invoke-virtual {v1, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 123
    .local v6, "lengthRead":I
    nop

    .line 122
    nop

    .line 124
    if-ne v4, v6, :cond_0

    .line 131
    :try_start_5
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    new-instance v8, Landroid/nfc/NdefMessage;

    invoke-direct {v8, v5}, Landroid/nfc/NdefMessage;-><init>([B)V

    aput-object v8, v7, v3
    :try_end_5
    .catch Landroid/nfc/FormatException; {:try_start_5 .. :try_end_5} :catch_0

    .line 134
    nop

    .line 99
    .end local v4    # "length":I
    .end local v5    # "bytes":[B
    .end local v6    # "lengthRead":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    .restart local v4    # "length":I
    .restart local v5    # "bytes":[B
    .restart local v6    # "lengthRead":I
    :catch_0
    move-exception v7

    .line 133
    .local v7, "e":Landroid/nfc/FormatException;
    throw v7

    .line 125
    .end local v7    # "e":Landroid/nfc/FormatException;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bytes but expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NdefMessageSet"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v7, Landroid/nfc/FormatException;

    const-string v8, "Error while parsing NdefMessageSet"

    invoke-direct {v7, v8}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 120
    .end local v6    # "lengthRead":I
    :catch_1
    move-exception v6

    .line 121
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read bytes for message "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NdefMessageSet"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v7, Landroid/nfc/FormatException;

    const-string v8, "Error while parsing NdefMessageSet"

    invoke-direct {v7, v8}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 111
    .end local v4    # "length":I
    .end local v5    # "bytes":[B
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 112
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read length for message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NdefMessageSet"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v5, Landroid/nfc/FormatException;

    const-string v6, "Error while parsing NdefMessageSet"

    invoke-direct {v5, v6}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 103
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 104
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read action for message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NdefMessageSet"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v5, Landroid/nfc/FormatException;

    const-string v6, "Error while parsing NdefMessageSet"

    invoke-direct {v5, v6}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 136
    .end local v3    # "i":I
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    return-void

    .line 92
    :cond_2
    const-string v3, "NdefMessageSet"

    const-string v4, "No NdefMessage inside NdefMessageSet packet"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v3, Landroid/nfc/FormatException;

    const-string v4, "Error while parsing NdefMessageSet"

    invoke-direct {v3, v4}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 87
    :catch_4
    move-exception v3

    .line 88
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "NdefMessageSet"

    const-string v5, "Unable to read numMessages"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v4, Landroid/nfc/FormatException;

    const-string v5, "Error while parsing NdefMessageSet"

    invoke-direct {v4, v5}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",  expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NdefMessageSet"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v4, Landroid/nfc/FormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",  expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    .end local v2    # "version":B
    :catch_5
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "NdefMessageSet"

    const-string v4, "Unable to read version"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v3, Landroid/nfc/FormatException;

    const-string v4, "Unable to read version"

    invoke-direct {v3, v4}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>([B[Landroid/nfc/NdefMessage;)V
    .locals 3
    .param p1, "actions"    # [B
    .param p2, "messages"    # [Landroid/nfc/NdefMessage;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 58
    array-length v0, p1

    .line 59
    .local v0, "numMessages":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 60
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 61
    new-array v1, v0, [Landroid/nfc/NdefMessage;

    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 62
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    .line 64
    return-void

    .line 53
    .end local v0    # "numMessages":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actions and messages must be the same size and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getImmediate()Landroid/nfc/NdefMessage;
    .locals 3

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aget-object v1, v1, v0

    return-object v1

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toByteArray()[B
    .locals 5

    .line 149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 150
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v1, "output":Ljava/io/DataOutputStream;
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 154
    iget v2, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 155
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v2, v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    aget-byte v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 157
    iget-object v3, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    .line 158
    .local v3, "bytes":[B
    array-length v4, v3

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 159
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v3    # "bytes":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "i":I
    :cond_0
    nop

    .line 165
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    return-object v3
.end method
