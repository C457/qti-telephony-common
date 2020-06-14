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

.field static final DBG:Z

.field static final INSTR_SELECT:B = -0x5ct

.field static final MINIMUM_AID_LENGTH:I = 0x5

.field static final SELECT_APDU_HDR_LENGTH:I = 0x5

.field static final STATE_IDLE:I = 0x0

.field static final STATE_W4_DEACTIVATE:I = 0x3

.field static final STATE_W4_SELECT:I = 0x1

.field static final STATE_W4_SERVICE:I = 0x2

.field static final STATE_XFER:I = 0x4

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

.field final mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field private mPaymentConnection:Landroid/content/ServiceConnection;

.field mPaymentService:Landroid/os/Messenger;

.field mPaymentServiceBound:Z

.field mPaymentServiceName:Landroid/content/ComponentName;

.field mSelectApdu:[B

.field mService:Landroid/os/Messenger;

.field mServiceBound:Z

.field mServiceName:Landroid/content/ComponentName;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    const-string v0, "persist.nfc.ce_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->DBG:Z

    .line 84
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    .line 86
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    .line 87
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

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mMessenger:Landroid/os/Messenger;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 107
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    .line 108
    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    .line 449
    new-instance v1, Lcom/android/nfc/cardemulation/HostEmulationManager$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$1;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    .line 472
    new-instance v1, Lcom/android/nfc/cardemulation/HostEmulationManager$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$2;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 123
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    .line 124
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    .line 125
    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 126
    iput v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 127
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    .line 128
    return-void
.end method

.method static bytesToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 548
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 549
    .local v0, "hexChars":[C
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [C

    .line 551
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 552
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 553
    .local v3, "byteValue":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 554
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
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


# virtual methods
.method bindPaymentServiceLocked(ILandroid/content/ComponentName;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 382
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked()V

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 386
    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastBoundPaymentServiceName:Landroid/content/ComponentName;

    .line 387
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    iput-boolean v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    goto :goto_0

    .line 391
    :cond_0
    const-string v1, "HostEmulationManager"

    const-string v2, "Could not bind (persistent) payment service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :goto_0
    return-void
.end method

.method bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 318
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    const-string v1, "HostEmulationManager"

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const-string v0, "Service already bound as payment service."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    return-object v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    const-string v0, "Service already bound as regular service."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    return-object v0

    .line 325
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "aidIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    iput-boolean v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    goto :goto_0

    .line 333
    :cond_2
    const-string v2, "Could not bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 560
    const-string v0, "Bound HCE-A/HCE-B services: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    payment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_1

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    other: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    :cond_1
    return-void
.end method

.method findSelectAid([B)Ljava/lang/String;
    .locals 4
    .param p1, "data"    # [B

    .line 426
    const-string v0, "HostEmulationManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    array-length v2, p1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    const/16 v3, -0x5c

    if-ne v2, v3, :cond_3

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 437
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-eqz v2, :cond_1

    .line 438
    const-string v2, "Selecting next, last or previous AID occurrence is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1
    aget-byte v0, p1, v3

    .line 441
    .local v0, "aidLength":I
    array-length v2, p1

    add-int/lit8 v3, v0, 0x5

    if-ge v2, v3, :cond_2

    .line 442
    return-object v1

    .line 444
    :cond_2
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bytesToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 446
    .end local v0    # "aidLength":I
    :cond_3
    return-object v1

    .line 427
    :cond_4
    :goto_0
    sget-boolean v2, Lcom/android/nfc/cardemulation/HostEmulationManager;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Data size too small for SELECT APDU"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_5
    return-object v1
.end method

.method launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 3
    .param p2, "failedComponent"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 415
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 417
    const-string v1, "services"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 418
    const-string v1, "category"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    if-eqz p2, :cond_0

    .line 420
    const-string v1, "failed_component"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 422
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 423
    return-void
.end method

.method launchTapAgain(Landroid/nfc/cardemulation/NfcApduServiceInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Landroid/nfc/cardemulation/NfcApduServiceInfo;
    .param p2, "category"    # Ljava/lang/String;

    .line 406
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    const-string v1, "apdu_service"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 409
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 411
    return-void
.end method

.method public onHostEmulationActivated()V
    .locals 4

    .line 151
    const-string v0, "HostEmulationManager"

    const-string v1, "notifyHostEmulationActivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.nfc.cardemulation.action.CLOSE_TAP_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 158
    iget v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-eqz v2, :cond_0

    .line 159
    const-string v2, "HostEmulationManager"

    const-string v3, "Got activation event in non-idle state"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 162
    .end local v1    # "intent":Landroid/content/Intent;
    monitor-exit v0

    .line 163
    return-void

    .line 162
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

    .line 166
    const-string v0, "HostEmulationManager"

    const-string v1, "notifyHostEmulationData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->findSelectAid([B)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "selectAid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 169
    .local v1, "resolvedService":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 170
    .local v2, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 171
    :try_start_0
    iget v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-nez v4, :cond_0

    .line 172
    const-string v4, "HostEmulationManager"

    const-string v5, "Got data in idle state."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v3

    return-void

    .line 174
    :cond_0
    iget v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 175
    const-string v4, "HostEmulationManager"

    const-string v5, "Dropping APDU in STATE_W4_DECTIVATE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    monitor-exit v3

    return-void

    .line 178
    :cond_1
    if-eqz v0, :cond_b

    .line 179
    const-string v4, "A000000476416E64726F6964484345"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    sget-object v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 181
    monitor-exit v3

    return-void

    .line 183
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v4, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v4

    move-object v2, v4

    .line 184
    if-eqz v2, :cond_a

    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_2

    .line 189
    :cond_3
    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastSelectedAid:Ljava/lang/String;

    .line 190
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    if-eqz v4, :cond_7

    .line 193
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 194
    .local v4, "defaultServiceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->requiresUnlock()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    .line 195
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 197
    iput v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 198
    iget-object v5, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchTapAgain(Landroid/nfc/cardemulation/NfcApduServiceInfo;Ljava/lang/String;)V

    .line 199
    monitor-exit v3

    return-void

    .line 203
    :cond_4
    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->isOnHost()Z

    move-result v6

    if-nez v6, :cond_5

    .line 204
    const-string v5, "HostEmulationManager"

    const-string v6, "AID that was meant to go off-host was routed to host. Check routing table configuration."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    sget-object v6, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v5, v6}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 207
    monitor-exit v3

    return-void

    .line 209
    :cond_5
    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move-object v1, v6

    .line 210
    .end local v4    # "defaultServiceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_6
    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    if-eqz v4, :cond_6

    .line 211
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 212
    .local v6, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 213
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    move-object v1, v4

    .line 214
    goto :goto_1

    .line 216
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_8
    goto :goto_0

    .line 218
    :cond_9
    :goto_1
    if-nez v1, :cond_b

    .line 222
    iput v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 223
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 225
    monitor-exit v3

    return-void

    .line 186
    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    sget-object v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 187
    monitor-exit v3

    return-void

    .line 228
    :cond_b
    iget v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eq v4, v5, :cond_11

    if-eq v4, v7, :cond_10

    if-eq v4, v6, :cond_c

    goto/16 :goto_6

    .line 261
    :cond_c
    if-eqz v0, :cond_e

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v4

    .line 263
    .local v4, "existingService":Landroid/os/Messenger;
    if-eqz v4, :cond_d

    .line 264
    invoke-virtual {p0, v4, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 265
    iput v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_3

    .line 268
    :cond_d
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 269
    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 271
    .end local v4    # "existingService":Landroid/os/Messenger;
    :goto_3
    goto :goto_6

    :cond_e
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eqz v4, :cond_f

    .line 273
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v4, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_6

    .line 276
    :cond_f
    const-string v4, "HostEmulationManager"

    const-string v5, "Service no longer bound, dropping APDU"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 258
    :cond_10
    const-string v4, "HostEmulationManager"

    const-string v5, "Unexpected APDU in STATE_W4_SERVICE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    goto :goto_6

    .line 230
    :cond_11
    if-eqz v0, :cond_14

    .line 231
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v4

    .line 232
    .restart local v4    # "existingService":Landroid/os/Messenger;
    if-eqz v4, :cond_12

    .line 233
    const-string v8, "HostEmulationManager"

    const-string v9, "Binding to existing service"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput v6, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 235
    invoke-virtual {p0, v4, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_4

    .line 238
    :cond_12
    const-string v6, "HostEmulationManager"

    const-string v8, "Waiting for new service."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 241
    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 243
    :goto_4
    const-string v6, "payment"

    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v8, 0x89

    if-eqz v6, :cond_13

    .line 244
    const-string v6, "HCE"

    invoke-static {v8, v5, v6}, Landroid/util/StatsLog;->write(IILjava/lang/String;)I

    goto :goto_5

    .line 248
    :cond_13
    const-string v5, "HCE"

    invoke-static {v8, v7, v5}, Landroid/util/StatsLog;->write(IILjava/lang/String;)I

    .line 252
    .end local v4    # "existingService":Landroid/os/Messenger;
    :goto_5
    goto :goto_6

    .line 253
    :cond_14
    const-string v4, "HostEmulationManager"

    const-string v5, "Dropping non-select APDU in STATE_W4_SELECT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    sget-object v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->UNKNOWN_ERROR:[B

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 256
    nop

    .line 280
    :goto_6
    monitor-exit v3

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    .line 284
    const-string v0, "HostEmulationManager"

    const-string v1, "notifyHostEmulationDeactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-nez v1, :cond_0

    .line 287
    const-string v1, "HostEmulationManager"

    const-string v2, "Got deactivation event while in idle state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 290
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 291
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 292
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 293
    iput v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 294
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onOffHostAidSelected()V
    .locals 4

    .line 298
    const-string v0, "HostEmulationManager"

    const-string v1, "notifyOffHostAidSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_0
    iget v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 305
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 306
    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 307
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 308
    iput v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 311
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.nfc.cardemulation.action.CLOSE_TAP_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.nfc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 314
    .end local v1    # "intent":Landroid/content/Intent;
    monitor-exit v0

    .line 315
    return-void

    .line 314
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

    .line 141
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    if-eqz p1, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 147
    :goto_0
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 131
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    if-eqz p1, :cond_0

    .line 133
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindPaymentServiceLocked(ILandroid/content/ComponentName;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked()V

    .line 137
    :goto_0
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    .locals 5
    .param p1, "service"    # Landroid/os/Messenger;
    .param p2, "data"    # [B

    .line 340
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eq p1, v0, :cond_1

    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 342
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 343
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 349
    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 350
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v1, "dataBundle":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 352
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 353
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 355
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_1

    .line 356
    :catch_0
    move-exception v2

    .line 357
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HostEmulationManager"

    const-string v4, "Remote service has died, dropping APDU"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method sendDeactivateToActiveServiceLocked(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 362
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 364
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v1

    .line 370
    :goto_0
    return-void
.end method

.method unbindPaymentServiceLocked()V
    .locals 2

    .line 373
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    .line 377
    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    .line 379
    :cond_0
    return-void
.end method

.method unbindServiceIfNeededLocked()V
    .locals 2

    .line 396
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbinding from service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HostEmulationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    .line 401
    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 403
    :cond_0
    return-void
.end method
