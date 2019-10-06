.class public Lcom/android/nfc/dhimpl/NativeNfcTag;
.super Ljava/lang/Object;
.source "NativeNfcTag.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagEndpoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final STATUS_CODE_TARGET_LOST:I = 0x92


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectedHandle:I

.field private mConnectedTechIndex:I

.field private mIsPresent:Z

.field private mTechActBytes:[[B

.field private mTechExtras:[Landroid/os/Bundle;

.field private mTechHandles:[I

.field private mTechLibNfcTypes:[I

.field private mTechList:[I

.field private mTechPollBytes:[[B

.field private mUid:[B

.field private mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string v0, "NativeNfcTag"

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;
    .param p1, "x1"    # Z

    .line 59
    iput-boolean p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/dhimpl/NativeNfcTag;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .line 59
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private addTechnology(III)V
    .locals 6
    .param p1, "tech"    # I
    .param p2, "handle"    # I
    .param p3, "libnfctype"    # I

    .line 494
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 495
    .local v0, "mNewTechList":[I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v1

    aput p1, v0, v1

    .line 497
    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 499
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 500
    .local v1, "mNewHandleList":[I
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v4, v4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v2, v2

    aput p2, v1, v2

    .line 502
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 504
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 505
    .local v2, "mNewTypeList":[I
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v5, v5

    invoke-static {v4, v3, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 506
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v3, v3

    aput p3, v2, v3

    .line 507
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 508
    return-void
.end method

.method private declared-synchronized checkNdefWithStatus([I)I
    .locals 2
    .param p1, "ndefinfo"    # [I

    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 355
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doCheckNdef([I)I

    move-result v0

    .line 356
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :cond_1
    monitor-exit p0

    return v0

    .line 351
    .end local v0    # "status":I
    .end local p1    # "ndefinfo":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw p1
.end method

.method private native doCheckNdef([I)I
.end method

.method private native doConnect(I)I
.end method

.method private native doRead()[B
.end method

.method private native doTransceive([BZ[I)[B
.end method

.method private native doWrite([B)Z
.end method

.method private getConnectedHandle()I
    .locals 1

    .line 469
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private getConnectedLibNfcType()I
    .locals 2

    .line 473
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    aget v0, v0, v1

    return v0

    .line 476
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getNdefType(II)I
    .locals 1
    .param p1, "libnfctype"    # I
    .param p2, "javatype"    # I

    .line 490
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doGetNdefType(II)I

    move-result v0

    return v0
.end method

.method private getTechIndex(I)I
    .locals 3
    .param p1, "tech"    # I

    .line 591
    const/4 v0, -0x1

    .line 592
    .local v0, "techIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 593
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 594
    move v0, v1

    .line 595
    goto :goto_1

    .line 592
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private hasTech(I)Z
    .locals 3
    .param p1, "tech"    # I

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 604
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 605
    const/4 v0, 0x1

    .line 606
    goto :goto_1

    .line 603
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private hasTechOnHandle(II)Z
    .locals 3
    .param p1, "tech"    # I
    .param p2, "handle"    # I

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 615
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_0

    .line 616
    const/4 v0, 0x1

    .line 617
    goto :goto_1

    .line 614
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 620
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isUltralightC()Z
    .locals 9

    .line 636
    const/4 v0, 0x0

    .line 637
    .local v0, "isUltralightC":Z
    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 638
    .local v2, "readCmd":[B
    new-array v3, v1, [I

    .line 639
    .local v3, "retCode":[I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->transceive([BZ[I)[B

    move-result-object v4

    .line 640
    .local v4, "respData":[B
    if-eqz v4, :cond_3

    array-length v5, v4

    const/16 v6, 0x10

    if-ne v5, v6, :cond_3

    .line 643
    aget-byte v5, v4, v1

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    if-nez v5, :cond_1

    const/4 v5, 0x3

    aget-byte v5, v4, v5

    if-nez v5, :cond_1

    aget-byte v5, v4, v7

    if-nez v5, :cond_1

    aget-byte v5, v4, v6

    if-nez v5, :cond_1

    aget-byte v5, v4, v8

    if-nez v5, :cond_1

    const/4 v5, 0x7

    aget-byte v5, v4, v5

    if-nez v5, :cond_1

    .line 647
    const/16 v5, 0x8

    aget-byte v5, v4, v5

    if-ne v5, v1, :cond_0

    const/16 v1, 0x9

    aget-byte v1, v4, v1

    if-nez v1, :cond_0

    .line 649
    const/4 v0, 0x1

    goto :goto_0

    .line 653
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 658
    :cond_1
    aget-byte v1, v4, v7

    const/16 v5, -0x1f

    if-ne v1, v5, :cond_2

    aget-byte v1, v4, v6

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x20

    if-ge v1, v5, :cond_2

    .line 665
    aget-byte v1, v4, v8

    and-int/lit16 v1, v1, 0xff

    if-le v1, v8, :cond_3

    .line 666
    const/4 v0, 0x1

    goto :goto_0

    .line 670
    :cond_2
    const/4 v0, 0x0

    .line 674
    :cond_3
    :goto_0
    return v0

    :array_0
    .array-data 1
        0x30t
        0x2t
    .end array-data
.end method


# virtual methods
.method public addNdefFormatableTechnology(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "libnfcType"    # I

    .line 550
    monitor-enter p0

    .line 551
    const/4 v0, 0x7

    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 552
    monitor-exit p0

    .line 553
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V
    .locals 5
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "handle"    # I
    .param p3, "libnfcType"    # I
    .param p4, "javaType"    # I
    .param p5, "maxLength"    # I
    .param p6, "cardState"    # I

    .line 562
    monitor-enter p0

    .line 563
    const/4 v0, 0x6

    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 565
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "ndefmsg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 567
    const-string v1, "ndefmaxlength"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 568
    const-string v1, "ndefcardstate"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 569
    const-string v1, "ndeftype"

    invoke-direct {p0, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getNdefType(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 571
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v1

    .line 575
    .local v1, "builtTechExtras":[Landroid/os/Bundle;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 576
    .end local v1    # "builtTechExtras":[Landroid/os/Bundle;
    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v1

    .line 580
    .local v1, "oldTechExtras":[Landroid/os/Bundle;
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    .line 581
    .local v2, "newTechExtras":[Landroid/os/Bundle;
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    array-length v3, v1

    aput-object v0, v2, v3

    .line 583
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 587
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "oldTechExtras":[Landroid/os/Bundle;
    .end local v2    # "newTechExtras":[Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    .line 588
    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized checkNdef([I)Z
    .locals 1
    .param p1, "ndefinfo"    # [I

    monitor-enter p0

    .line 363
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "ndefinfo":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw p1
.end method

.method public declared-synchronized connect(I)Z
    .locals 1
    .param p1, "technology"    # I

    monitor-enter p0

    .line 250
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "technology":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw p1
.end method

.method public declared-synchronized connectWithStatus(I)I
    .locals 5
    .param p1, "technology"    # I

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 175
    :cond_0
    const/4 v0, -0x1

    .line 176
    .local v0, "status":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 177
    const-string v2, "NativeNfcTag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectWithStatus- technology ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_5

    .line 180
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_2

    .line 187
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 190
    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doConnect(I)I

    move-result v2

    move v0, v2

    goto :goto_1

    .line 193
    :cond_1
    const-string v2, "NativeNfcTag"

    const-string v3, "Connect to a tech with a different handle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v2

    move v0, v2

    .line 197
    :goto_1
    if-nez v0, :cond_6

    .line 198
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    .line 199
    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    goto :goto_2

    .line 208
    :cond_2
    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    .line 211
    :cond_3
    const/4 v1, 0x0

    .line 214
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v2

    move v0, v2

    .line 235
    if-nez v0, :cond_6

    .line 236
    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    goto :goto_2

    .line 176
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    .end local v1    # "i":I
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_7

    .line 244
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_7
    monitor-exit p0

    return v0

    .line 171
    .end local v0    # "status":I
    .end local p1    # "technology":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw p1
.end method

.method public disconnect()Z
    .locals 3

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "result":Z
    monitor-enter p0

    .line 285
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 286
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 287
    .local v2, "watchdog":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 288
    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v2, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->end(Z)V

    .line 292
    :try_start_1
    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 296
    :goto_0
    monitor-enter p0

    .line 297
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 298
    monitor-exit p0

    .line 299
    const/4 v0, 0x1

    goto :goto_1

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z

    move-result v0

    .line 304
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 305
    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    .line 306
    return v0

    .line 287
    .end local v2    # "watchdog":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method native doDisconnect()Z
.end method

.method native doGetNdefType(II)I
.end method

.method native doHandleReconnect(I)I
.end method

.method native doIsIsoDepNdefFormatable([B[B)Z
.end method

.method native doMakeReadonly([B)Z
.end method

.method native doNdefFormat([B)Z
.end method

.method native doPresenceCheck()Z
.end method

.method native doReconnect()I
.end method

.method public findAndReadNdef()Landroid/nfc/NdefMessage;
    .locals 21

    .line 784
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechList()[I

    move-result-object v9

    .line 785
    .local v9, "technologies":[I
    iget-object v10, v8, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 786
    .local v10, "handles":[I
    const/4 v1, 0x0

    .line 787
    .local v1, "ndefMsg":Landroid/nfc/NdefMessage;
    const/4 v0, 0x0

    .line 788
    .local v0, "foundFormattable":Z
    const/4 v2, 0x0

    .line 789
    .local v2, "formattableHandle":I
    const/4 v3, 0x0

    .line 792
    .local v3, "formattableLibNfcType":I
    const/4 v4, 0x0

    move v5, v3

    move v3, v2

    move v2, v0

    move v0, v4

    .local v0, "techIndex":I
    .local v2, "foundFormattable":Z
    .local v3, "formattableHandle":I
    .local v5, "formattableLibNfcType":I
    :goto_0
    move v11, v0

    .end local v0    # "techIndex":I
    .local v11, "techIndex":I
    array-length v0, v9

    if-ge v11, v0, :cond_a

    .line 794
    move v0, v4

    .local v0, "i":I
    :goto_1
    if-ge v0, v11, :cond_0

    .line 795
    aget v6, v10, v0

    aget v6, v10, v11

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 800
    .end local v0    # "i":I
    :cond_0
    aget v0, v9, v11

    invoke-virtual {v8, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v0

    .line 801
    .local v0, "status":I
    const/16 v6, 0x92

    if-eqz v0, :cond_1

    .line 802
    const-string v7, "NativeNfcTag"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Connect Failed - status = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    if-ne v0, v6, :cond_6

    .line 804
    goto/16 :goto_5

    .line 809
    :cond_1
    if-nez v2, :cond_3

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isNdefFormatable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 811
    const/4 v2, 0x1

    .line 812
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v3

    .line 813
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v5

    .line 818
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    .line 821
    .end local v2    # "foundFormattable":Z
    .end local v3    # "formattableHandle":I
    .end local v5    # "formattableLibNfcType":I
    .local v12, "foundFormattable":Z
    .local v13, "formattableHandle":I
    .local v14, "formattableLibNfcType":I
    :cond_3
    move v12, v2

    move v13, v3

    move v14, v5

    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 822
    .local v15, "ndefinfo":[I
    invoke-direct {v8, v15}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v7

    .line 823
    .end local v0    # "status":I
    .local v7, "status":I
    if-eqz v7, :cond_7

    .line 824
    const-string v0, "NativeNfcTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check NDEF Failed - status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    if-ne v7, v6, :cond_5

    .line 826
    nop

    .line 869
    .end local v7    # "status":I
    .end local v11    # "techIndex":I
    .end local v12    # "foundFormattable":Z
    .end local v15    # "ndefinfo":[I
    .restart local v2    # "foundFormattable":Z
    :cond_4
    move v2, v12

    goto/16 :goto_6

    .line 792
    .end local v2    # "foundFormattable":Z
    .restart local v7    # "status":I
    .restart local v11    # "techIndex":I
    .restart local v12    # "foundFormattable":Z
    :cond_5
    move v0, v7

    move v2, v12

    move v3, v13

    move v5, v14

    .end local v7    # "status":I
    .end local v12    # "foundFormattable":Z
    .end local v13    # "formattableHandle":I
    .end local v14    # "formattableLibNfcType":I
    .restart local v0    # "status":I
    .restart local v2    # "foundFormattable":Z
    .restart local v3    # "formattableHandle":I
    .restart local v5    # "formattableLibNfcType":I
    :cond_6
    add-int/lit8 v6, v11, 0x1

    .end local v11    # "techIndex":I
    .local v6, "techIndex":I
    move v0, v6

    goto :goto_0

    .line 832
    .end local v0    # "status":I
    .end local v2    # "foundFormattable":Z
    .end local v3    # "formattableHandle":I
    .end local v5    # "formattableLibNfcType":I
    .end local v6    # "techIndex":I
    .restart local v7    # "status":I
    .restart local v11    # "techIndex":I
    .restart local v12    # "foundFormattable":Z
    .restart local v13    # "formattableHandle":I
    .restart local v14    # "formattableLibNfcType":I
    .restart local v15    # "ndefinfo":[I
    :cond_7
    const/16 v16, 0x0

    .line 834
    .local v16, "generateEmptyNdef":Z
    aget v17, v15, v4

    .line 835
    .local v17, "supportedNdefLength":I
    const/4 v0, 0x1

    aget v18, v15, v0

    .line 836
    .local v18, "cardState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->readNdef()[B

    move-result-object v6

    .line 837
    .local v6, "buff":[B
    if-eqz v6, :cond_8

    array-length v0, v6

    if-lez v0, :cond_8

    .line 839
    :try_start_0
    new-instance v2, Landroid/nfc/NdefMessage;

    invoke-direct {v2, v6}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 840
    .end local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v2, "ndefMsg":Landroid/nfc/NdefMessage;
    nop

    .line 841
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v3

    .line 842
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v4

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v5
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 840
    move-object v1, v8

    move-object/from16 v19, v6

    move/from16 v6, v17

    .end local v6    # "buff":[B
    .local v19, "buff":[B
    move/from16 v20, v7

    move/from16 v7, v18

    .end local v7    # "status":I
    .local v20, "status":I
    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 845
    const/4 v12, 0x0

    .line 846
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z
    :try_end_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 847
    :catch_0
    move-exception v0

    goto :goto_2

    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .restart local v6    # "buff":[B
    .restart local v7    # "status":I
    :catch_1
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    goto :goto_2

    .end local v2    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    :catch_2
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object v2, v1

    .line 849
    .end local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v6    # "buff":[B
    .end local v7    # "status":I
    .local v0, "e":Landroid/nfc/FormatException;
    .restart local v2    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v19    # "buff":[B
    .restart local v20    # "status":I
    :goto_2
    const/16 v16, 0x1

    .line 850
    .end local v0    # "e":Landroid/nfc/FormatException;
    .end local v2    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    :goto_3
    nop

    .line 856
    move-object v1, v2

    goto :goto_4

    .line 851
    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .restart local v6    # "buff":[B
    .restart local v7    # "status":I
    :cond_8
    move-object/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "buff":[B
    .end local v7    # "status":I
    .restart local v19    # "buff":[B
    .restart local v20    # "status":I
    if-eqz v19, :cond_9

    .line 853
    const/16 v16, 0x1

    .line 856
    :cond_9
    :goto_4
    if-eqz v16, :cond_4

    .line 857
    const/4 v0, 0x0

    .line 858
    .end local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v0, "ndefMsg":Landroid/nfc/NdefMessage;
    const/4 v2, 0x0

    .line 859
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v3

    .line 860
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v4

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v5

    .line 858
    move-object v1, v8

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 863
    const/4 v2, 0x0

    .line 864
    .end local v12    # "foundFormattable":Z
    .local v2, "foundFormattable":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    .line 869
    move-object v1, v0

    goto :goto_6

    .end local v0    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v11    # "techIndex":I
    .end local v13    # "formattableHandle":I
    .end local v14    # "formattableLibNfcType":I
    .end local v15    # "ndefinfo":[I
    .end local v16    # "generateEmptyNdef":Z
    .end local v17    # "supportedNdefLength":I
    .end local v18    # "cardState":I
    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .restart local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v3    # "formattableHandle":I
    .restart local v5    # "formattableLibNfcType":I
    :cond_a
    :goto_5
    move v13, v3

    move v14, v5

    .end local v3    # "formattableHandle":I
    .end local v5    # "formattableLibNfcType":I
    .restart local v13    # "formattableHandle":I
    .restart local v14    # "formattableLibNfcType":I
    :goto_6
    if-nez v1, :cond_b

    if-eqz v2, :cond_b

    .line 872
    invoke-virtual {v8, v13, v14}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefFormatableTechnology(II)V

    .line 877
    :cond_b
    return-object v1
.end method

.method public declared-synchronized formatNdef([B)Z
    .locals 2
    .param p1, "key"    # [B

    monitor-enter p0

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doNdefFormat([B)Z

    move-result v0

    .line 412
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_1
    monitor-exit p0

    return v0

    .line 407
    .end local v0    # "result":Z
    .end local p1    # "key":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw p1
.end method

.method public getConnectedTechnology()I
    .locals 2

    .line 482
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    aget v0, v0, v1

    return v0

    .line 485
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHandle()I
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v0, v0, v1

    return v0

    .line 454
    :cond_0
    return v1
.end method

.method public getTechExtras()[Landroid/os/Bundle;
    .locals 9

    .line 679
    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0

    return-object v0

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 682
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 683
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 684
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v3, v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    .line 772
    :pswitch_0
    goto/16 :goto_2

    .line 766
    :pswitch_1
    const-string v3, "barcodetype"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 767
    goto/16 :goto_1

    .line 748
    :pswitch_2
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isUltralightC()Z

    move-result v3

    .line 749
    .local v3, "isUlc":Z
    const-string v4, "isulc"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 750
    goto/16 :goto_1

    .line 754
    .end local v3    # "isUlc":Z
    :pswitch_3
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v3, v3, v1

    .line 755
    .local v3, "actBytes":[B
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    .line 756
    const-string v4, "sak"

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 760
    :cond_1
    const-string v4, "atqa"

    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v5, v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 761
    goto/16 :goto_1

    .line 740
    .end local v3    # "actBytes":[B
    :pswitch_4
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    if-lt v3, v4, :cond_5

    .line 741
    const-string v3, "respflags"

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v4, v4, v1

    aget-byte v4, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 742
    const-string v3, "dsfid"

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v4, v4, v1

    aget-byte v4, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_1

    .line 714
    :pswitch_5
    const/16 v3, 0x8

    new-array v5, v3, [B

    .line 715
    .local v5, "pmm":[B
    new-array v6, v4, [B

    .line 716
    .local v6, "sc":[B
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    array-length v7, v7

    if-lt v7, v3, :cond_2

    .line 718
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v0, v5, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 719
    const-string v7, "pmm"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 721
    :cond_2
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    array-length v7, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_5

    .line 722
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v3, v6, v0, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 723
    const-string v3, "systemcode"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    .line 729
    .end local v5    # "pmm":[B
    .end local v6    # "sc":[B
    :pswitch_6
    invoke-direct {p0, v5}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 730
    const-string v3, "histbytes"

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    .line 733
    :cond_3
    const-string v3, "hiresp"

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v4, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 735
    goto :goto_1

    .line 701
    :pswitch_7
    const/4 v3, 0x4

    new-array v4, v3, [B

    .line 702
    .local v4, "appData":[B
    const/4 v5, 0x3

    new-array v6, v5, [B

    .line 703
    .local v6, "protInfo":[B
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    array-length v7, v7

    const/4 v8, 0x7

    if-lt v7, v8, :cond_5

    .line 704
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 705
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v1

    invoke-static {v7, v3, v6, v0, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 707
    const-string v3, "appdata"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 708
    const-string v3, "protinfo"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    .line 686
    .end local v4    # "appData":[B
    .end local v6    # "protInfo":[B
    :pswitch_8
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v3, v3, v1

    .line 687
    .restart local v3    # "actBytes":[B
    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    .line 688
    const-string v4, "sak"

    aget-byte v5, v3, v0

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 693
    :cond_4
    const-string v4, "atqa"

    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v5, v5, v1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 694
    nop

    .line 775
    .end local v3    # "actBytes":[B
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    aput-object v2, v3, v1

    .line 682
    .end local v2    # "extras":Landroid/os/Bundle;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 777
    .end local v1    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0

    return-object v0

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getTechList()[I
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    return-object v0
.end method

.method public getUid()[B
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mUid:[B

    return-object v0
.end method

.method public declared-synchronized isNdefFormatable()Z
    .locals 3

    monitor-enter p0

    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doIsIsoDepNdefFormatable([B[B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw v0
.end method

.method public declared-synchronized isPresent()Z
    .locals 1

    monitor-enter p0

    .line 277
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw v0
.end method

.method public declared-synchronized makeReadOnly()Z
    .locals 2

    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 425
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    sget-object v0, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 429
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z

    move-result v0

    .line 431
    .restart local v0    # "result":Z
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :cond_2
    monitor-exit p0

    return v0

    .line 420
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw v0
.end method

.method public declared-synchronized presenceCheck()Z
    .locals 2

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v0

    .line 399
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_1
    monitor-exit p0

    return v0

    .line 394
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw v0
.end method

.method public declared-synchronized readNdef()[B
    .locals 2

    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doRead()[B

    move-result-object v0

    .line 373
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_1
    monitor-exit p0

    return-object v0

    .line 368
    .end local v0    # "result":[B
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw v0
.end method

.method public declared-synchronized reconnect()Z
    .locals 1

    monitor-enter p0

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw v0
.end method

.method public declared-synchronized reconnectWithStatus()I
    .locals 2

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doReconnect()I

    move-result v0

    .line 315
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_1
    monitor-exit p0

    return v0

    .line 310
    .end local v0    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw v0
.end method

.method public declared-synchronized reconnectWithStatus(I)I
    .locals 2
    .param p1, "handle"    # I

    monitor-enter p0

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 330
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doHandleReconnect(I)I

    move-result v0

    .line 331
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_1
    monitor-exit p0

    return v0

    .line 326
    .end local v0    # "status":I
    .end local p1    # "handle":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw p1
.end method

.method public removeTechnology(I)V
    .locals 8
    .param p1, "tech"    # I

    .line 512
    monitor-enter p0

    .line 513
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechIndex(I)I

    move-result v0

    .line 514
    .local v0, "techIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    .line 516
    .local v1, "mNewTechList":[I
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v5, v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v4, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 521
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [I

    .line 522
    .local v2, "mNewHandleList":[I
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    invoke-static {v4, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 523
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v6, v6

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v5, v1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 525
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 527
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [I

    .line 528
    .local v4, "mNewTypeList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v7, v7

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, v4, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    iput-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 537
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v5, :cond_0

    .line 539
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [Landroid/os/Bundle;

    .line 540
    .local v5, "mNewTechExtras":[Landroid/os/Bundle;
    iget-object v6, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    invoke-static {v6, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    array-length v7, v7

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    iput-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 546
    .end local v0    # "techIndex":I
    .end local v1    # "mNewTechList":[I
    .end local v2    # "mNewHandleList":[I
    .end local v4    # "mNewTypeList":[I
    .end local v5    # "mNewTechExtras":[Landroid/os/Bundle;
    :cond_0
    monitor-exit p0

    .line 547
    return-void

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V
    .locals 1
    .param p1, "presenceCheckDelay"    # I
    .param p2, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    monitor-enter p0

    .line 266
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 267
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;-><init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 269
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    monitor-exit p0

    return-void

    .line 265
    .end local p1    # "presenceCheckDelay":I
    .end local p2    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw p1
.end method

.method public declared-synchronized stopPresenceChecking()V
    .locals 2

    monitor-enter p0

    .line 255
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 256
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->end(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_0
    monitor-exit p0

    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw v0
.end method

.method public declared-synchronized transceive([BZ[I)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "raw"    # Z
    .param p3, "returnCode"    # [I

    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 343
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doTransceive([BZ[I)[B

    move-result-object v0

    .line 344
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_1
    monitor-exit p0

    return-object v0

    .line 339
    .end local v0    # "result":[B
    .end local p1    # "data":[B
    .end local p2    # "raw":Z
    .end local p3    # "returnCode":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw p1
.end method

.method public declared-synchronized writeNdef([B)Z
    .locals 2
    .param p1, "buf"    # [B

    monitor-enter p0

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doWrite([B)Z

    move-result v0

    .line 386
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_1
    monitor-exit p0

    return v0

    .line 381
    .end local v0    # "result":Z
    .end local p1    # "buf":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    throw p1
.end method
