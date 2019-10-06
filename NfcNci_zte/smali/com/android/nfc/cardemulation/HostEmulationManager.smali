.class public Lcom/android/nfc/cardemulation/HostEmulationManager;
.super Ljava/lang/Object;
.source "HostEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;
    }
.end annotation


# static fields
.field static final AID_NOT_FOUND:[B

.field static final ANDROID_HCE_AID:Ljava/lang/String; = "A000000476416E64726F6964484345"

.field static final ANDROID_HCE_RESPONSE:[B

.field static final DBG:Z = true

.field static final INSTR_SELECT:B = -0x5ct

.field static final MINIMUM_AID_LENGTH:I = 0x5

.field static final NFCID2_LENGTH:I = 0x8

.field static final SCREEN_STATE_OFF:I = 0x1

.field static final SCREEN_STATE_ON_LOCKED:I = 0x2

.field static final SCREEN_STATE_ON_UNLOCKED:I = 0x3

.field static final SELECT_APDU_HDR_LENGTH:I = 0x5

.field static final STATE_IDLE:I = 0x0

.field static final STATE_W4_DEACTIVATE:I = 0x3

.field static final STATE_W4_SELECT:I = 0x1

.field static final STATE_W4_SERVICE:I = 0x2

.field static final STATE_XFER:I = 0x4

.field static final T3T_CMD_HDR_LENGTH:I = 0x1

.field static final T3T_MSG_OPC_CHECK_CMD:B = 0x6t

.field static final T3T_MSG_OPC_POLL_CMD:B = 0x0t

.field static final T3T_MSG_OPC_REQ_RESPONSE_CMD:B = 0x4t

.field static final T3T_MSG_OPC_REQ_SERVICE_CMD:B = 0x2t

.field static final T3T_MSG_OPC_REQ_SYSTEMCODE_CMD:B = 0xct

.field static final T3T_MSG_OPC_UPDATE_CMD:B = 0x8t

.field static final TAG:Ljava/lang/String; = "HostEmulationManager"

.field static final UNKNOWN_ERROR:[B


# instance fields
.field mActiveService:Landroid/os/Messenger;

.field mActiveServiceName:Landroid/content/ComponentName;

.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field private mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field final mKeyguard:Landroid/app/KeyguardManager;

.field mLastBoundPaymentServiceName:Landroid/content/ComponentName;

.field mLastSelectedAid:Ljava/lang/String;

.field mLastSelectedNfcid2:Ljava/lang/String;

.field final mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field private mPaymentConnection:Landroid/content/ServiceConnection;

.field mPaymentService:Landroid/os/Messenger;

.field mPaymentServiceBound:Z

.field mPaymentServiceName:Landroid/content/ComponentName;

.field mScreenState:I

.field mSelectApdu:[B

.field mService:Landroid/os/Messenger;

.field mServiceBound:Z

.field mServiceName:Landroid/content/ComponentName;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    .line 100
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    .line 101
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->UNKNOWN_ERROR:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        -0x7ft
        0x0t
        0x0t
        -0x70t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6at
        -0x7et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6ft
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidCache"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mMessenger:Landroid/os/Messenger;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 122
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    .line 123
    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    .line 528
    new-instance v1, Lcom/android/nfc/cardemulation/HostEmulationManager$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$1;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    .line 551
    new-instance v1, Lcom/android/nfc/cardemulation/HostEmulationManager$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$2;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 142
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    .line 143
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    .line 144
    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 145
    iput v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 146
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mScreenState:I

    .line 147
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    .line 148
    return-void
.end method

.method static bytesToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 627
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 628
    .local v0, "hexChars":[C
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [C

    .line 630
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 631
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 632
    .local v3, "byteValue":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 633
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 630
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 635
    .end local v2    # "j":I
    .end local v3    # "byteValue":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private isValidT3TOpcode(B)Z
    .locals 2
    .param p1, "opcode"    # B

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "result":Z
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc0

    if-lt p1, v1, :cond_1

    const/16 v1, 0xdf

    if-gt p1, v1, :cond_1

    .line 659
    :cond_0
    const/4 v0, 0x1

    .line 662
    :cond_1
    return v0
.end method


# virtual methods
.method bindPaymentServiceLocked(ILandroid/content/ComponentName;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 434
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked()V

    .line 436
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 438
    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastBoundPaymentServiceName:Landroid/content/ComponentName;

    .line 439
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iput-boolean v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    goto :goto_0

    .line 443
    :cond_0
    const-string v1, "HostEmulationManager"

    const-string v2, "Could not bind (persistent) payment service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    return-void
.end method

.method bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 370
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "HostEmulationManager"

    const-string v1, "Service already bound as payment service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    return-object v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    const-string v0, "HostEmulationManager"

    const-string v1, "Service already bound as regular service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    return-object v0

    .line 377
    :cond_1
    const-string v0, "HostEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "aidIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    iput-boolean v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    goto :goto_0

    .line 385
    :cond_2
    const-string v1, "HostEmulationManager"

    const-string v2, "Could not bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 639
    const-string v0, "Bound HCE-A/HCE-B services: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v0, :cond_0

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    payment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_1

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    other: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    :cond_1
    return-void
.end method

.method findSelectAid([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B

    .line 478
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, -0x5c

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 489
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    if-eqz v1, :cond_1

    .line 490
    const-string v1, "HostEmulationManager"

    const-string v3, "Selecting next, last or previous AID occurrence is not supported"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_1
    aget-byte v1, p1, v2

    .line 493
    .local v1, "aidLength":I
    array-length v2, p1

    const/4 v3, 0x5

    add-int v4, v3, v1

    if-ge v2, v4, :cond_2

    .line 494
    return-object v0

    .line 496
    :cond_2
    invoke-static {p1, v3, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bytesToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 498
    .end local v1    # "aidLength":I
    :cond_3
    return-object v0

    .line 479
    :cond_4
    :goto_0
    const-string v1, "HostEmulationManager"

    const-string v2, "Data size too small for SELECT APDU"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-object v0
.end method

.method findSelectNfcid2([B)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # [B

    .line 509
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    .line 510
    .local v1, "payloadLength":I
    const/4 v2, 0x1

    aget-byte v3, p1, v2

    .line 511
    .local v3, "FelicaCmdOpcodeByte0":I
    const/4 v4, 0x1

    .line 512
    .local v4, "FelicaCmdOpcodeLength":I
    array-length v5, p1

    aget-byte v0, p1, v0

    if-ne v5, v0, :cond_2

    aget-byte v0, p1, v2

    .line 513
    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->isValidT3TOpcode(B)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    const/16 v0, 0xc0

    if-lt v3, v0, :cond_1

    const/16 v0, 0xdf

    if-gt v3, v0, :cond_1

    .line 517
    const/4 v4, 0x2

    .line 519
    :cond_1
    const-string v0, "HostEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "payloadLength = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v0, "HostEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FelicaCmdOpcodeLength = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v0, "HostEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FelicaCmdOpcodeByte0 = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    add-int/lit8 v0, v4, 0x1

    const/16 v2, 0x8

    invoke-static {p1, v0, v2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bytesToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 514
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p2, "failedComponent"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 467
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 468
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 469
    const-string v1, "services"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 470
    const-string v1, "category"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    if-eqz p2, :cond_0

    .line 472
    const-string v1, "failed_component"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 475
    return-void
.end method

.method launchTapAgain(Landroid/nfc/cardemulation/NxpApduServiceInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .param p2, "category"    # Ljava/lang/String;

    .line 458
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v1, "apdu_service"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 461
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 463
    return-void
.end method

.method public onHostEmulationActivated()V
    .locals 4

    .line 175
    const-string v0, "HostEmulationManager"

    const-string v1, "notifyHostEmulationActivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.nfc.cardemulation.action.CLOSE_TAP_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 182
    iget v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "HostEmulationManager"

    const-string v3, "Got activation event in non-idle state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 186
    .end local v1    # "intent":Landroid/content/Intent;
    monitor-exit v0

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationData([B)V
    .locals 10
    .param p1, "data"    # [B

    .line 190
    const-string v0, "HostEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyHostEmulationData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "nfcid2":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->findSelectAid([B)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "selectAid":Ljava/lang/String;
    if-nez v1, :cond_0

    array-length v2, p1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->findSelectNfcid2([B)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_0
    const/4 v2, 0x0

    .line 198
    .local v2, "resolvedService":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 199
    :try_start_0
    iget v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-nez v4, :cond_1

    .line 200
    const-string v4, "HostEmulationManager"

    const-string v5, "Got data in idle state."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    monitor-exit v3

    return-void

    .line 202
    :cond_1
    iget v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 203
    const-string v4, "HostEmulationManager"

    const-string v5, "Dropping APDU in STATE_W4_DECTIVATE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    monitor-exit v3

    return-void

    .line 206
    :cond_2
    iget v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mScreenState:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 207
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    sget-object v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 208
    monitor-exit v3

    return-void

    .line 210
    :cond_3
    if-eqz v1, :cond_c

    .line 211
    const-string v4, "A000000476416E64726F6964484345"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    sget-object v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 213
    monitor-exit v3

    return-void

    .line 215
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v4, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v4

    .line 216
    .local v4, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    if-eqz v4, :cond_b

    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_3

    .line 221
    :cond_5
    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastSelectedAid:Ljava/lang/String;

    .line 222
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    if-eqz v6, :cond_8

    .line 225
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 226
    .local v6, "defaultServiceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->requiresUnlock()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    .line 227
    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 229
    iput v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 230
    iget-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v5, v7}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchTapAgain(Landroid/nfc/cardemulation/NxpApduServiceInfo;Ljava/lang/String;)V

    .line 231
    monitor-exit v3

    return-void

    .line 235
    :cond_6
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->isOnHost()Z

    move-result v7

    if-nez v7, :cond_7

    .line 236
    const-string v5, "HostEmulationManager"

    const-string v7, "AID that was meant to go off-host was routed to host. Check routing table configuration."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    sget-object v7, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v5, v7}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 239
    monitor-exit v3

    return-void

    .line 241
    :cond_7
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object v2, v7

    .line 242
    .end local v6    # "defaultServiceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    if-eqz v6, :cond_a

    .line 243
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 244
    .local v7, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    iget-object v8, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 245
    iget-object v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    move-object v2, v6

    .line 246
    goto :goto_1

    .line 248
    .end local v7    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_9
    goto :goto_0

    .line 250
    :cond_a
    :goto_1
    if-nez v2, :cond_c

    .line 254
    iput v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :try_start_1
    iget-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    goto :goto_2

    .line 258
    :catch_0
    move-exception v5

    .line 259
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v3

    return-void

    .line 218
    :cond_b
    :goto_3
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    sget-object v6, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v5, v6}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 219
    monitor-exit v3

    return-void

    .line 265
    .end local v4    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_c
    iget v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v4, v6, :cond_11

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_8

    .line 299
    :pswitch_0
    const-string v4, "HostEmulationManager"

    const-string v5, "Unexpected APDU in STATE_W4_SERVICE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    goto/16 :goto_8

    .line 267
    :pswitch_1
    if-eqz v1, :cond_e

    .line 268
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v4

    .line 269
    .local v4, "existingService":Landroid/os/Messenger;
    if-eqz v4, :cond_d

    .line 270
    const-string v5, "HostEmulationManager"

    const-string v7, "Binding to existing service"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iput v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 272
    invoke-virtual {p0, v4, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_4

    .line 275
    :cond_d
    const-string v6, "HostEmulationManager"

    const-string v7, "Waiting for new service."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 278
    iput v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 280
    .end local v4    # "existingService":Landroid/os/Messenger;
    :goto_4
    goto/16 :goto_8

    :cond_e
    if-eqz v0, :cond_10

    .line 281
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v4

    .line 282
    .restart local v4    # "existingService":Landroid/os/Messenger;
    if-eqz v4, :cond_f

    .line 283
    const-string v5, "HostEmulationManager"

    const-string v7, "Binding to existing service"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iput v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 285
    invoke-virtual {p0, v4, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_5

    .line 288
    :cond_f
    const-string v6, "HostEmulationManager"

    const-string v7, "Waiting for new service."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 291
    iput v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 293
    .end local v4    # "existingService":Landroid/os/Messenger;
    :goto_5
    goto :goto_8

    .line 294
    :cond_10
    const-string v4, "HostEmulationManager"

    const-string v5, "Dropping non-select APDU in STATE_W4_SELECT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    sget-object v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->UNKNOWN_ERROR:[B

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 297
    goto :goto_8

    .line 302
    :cond_11
    if-eqz v1, :cond_13

    .line 303
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v4

    .line 304
    .restart local v4    # "existingService":Landroid/os/Messenger;
    if-eqz v4, :cond_12

    .line 305
    invoke-virtual {p0, v4, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 306
    iput v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_6

    .line 309
    :cond_12
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 310
    iput v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 312
    .end local v4    # "existingService":Landroid/os/Messenger;
    :goto_6
    goto :goto_8

    :cond_13
    if-eqz v0, :cond_15

    .line 313
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v4

    .line 314
    .restart local v4    # "existingService":Landroid/os/Messenger;
    if-eqz v4, :cond_14

    .line 315
    invoke-virtual {p0, v4, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 316
    iput v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_7

    .line 319
    :cond_14
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 320
    iput v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 322
    .end local v4    # "existingService":Landroid/os/Messenger;
    :goto_7
    goto :goto_8

    .line 323
    :cond_15
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eqz v4, :cond_16

    .line 325
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v4, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_8

    .line 328
    :cond_16
    const-string v4, "HostEmulationManager"

    const-string v5, "Service no longer bound, dropping APDU"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_8
    monitor-exit v3

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    .line 336
    const-string v0, "HostEmulationManager"

    const-string v1, "notifyHostEmulationDeactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-nez v1, :cond_0

    .line 339
    const-string v1, "HostEmulationManager"

    const-string v2, "Got deactivation event while in idle state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 342
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 343
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 344
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 345
    iput v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 346
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onOffHostAidSelected()V
    .locals 4

    .line 350
    const-string v0, "HostEmulationManager"

    const-string v1, "notifyOffHostAidSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 357
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 358
    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 359
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 360
    iput v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.nfc.cardemulation.action.CLOSE_TAP_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 366
    .end local v1    # "intent":Landroid/content/Intent;
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 161
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    if-eqz p1, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 167
    :goto_0
    monitor-exit v0

    .line 168
    return-void

    .line 167
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 151
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    if-eqz p1, :cond_0

    .line 153
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindPaymentServiceLocked(ILandroid/content/ComponentName;)V

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked()V

    .line 157
    :goto_0
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    .locals 5
    .param p1, "service"    # Landroid/os/Messenger;
    .param p2, "data"    # [B

    .line 392
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eq p1, v0, :cond_1

    .line 393
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 394
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 395
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 401
    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 402
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v1, "dataBundle":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 404
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 405
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 407
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    goto :goto_1

    .line 408
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HostEmulationManager"

    const-string v4, "Remote service has died, dropping APDU"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method sendDeactivateToActiveServiceLocked(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 414
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    goto :goto_0

    .line 419
    :catch_0
    move-exception v1

    .line 422
    :goto_0
    return-void
.end method

.method public setScreenState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 171
    iput p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mScreenState:I

    .line 172
    return-void
.end method

.method unbindPaymentServiceLocked()V
    .locals 2

    .line 425
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    .line 429
    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    .line 431
    :cond_0
    return-void
.end method

.method unbindServiceIfNeededLocked()V
    .locals 3

    .line 448
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 449
    const-string v0, "HostEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbinding from service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 452
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    .line 453
    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 455
    :cond_0
    return-void
.end method
