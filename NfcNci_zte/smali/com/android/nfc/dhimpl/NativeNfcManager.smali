.class public Lcom/android/nfc/dhimpl/NativeNfcManager;
.super Ljava/lang/Object;
.source "NativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost;


# static fields
.field static final DEFAULT_LLCP_MIU:I = 0x7bc

.field static final DEFAULT_LLCP_RWSIZE:I = 0x2

.field static final DRIVER_NAME:Ljava/lang/String; = "android-nci"

.field private static final EE_WIPE_APDUS:[[B

.field private static final FIRMWARE_MODTIME_DEFAULT:J = -0x1L

.field public static final INTERNAL_TARGET_DESELECTED_ACTION:Ljava/lang/String; = "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

.field static final PN547C2_ID:I = 0x1

.field static final PN548C2_ID:I = 0x3

.field static final PN551_ID:I = 0x5

.field static final PN553_ID:I = 0x7

.field static final PN65T_ID:I = 0x2

.field static final PN66T_ID:I = 0x4

.field static final PN67T_ID:I = 0x6

.field static final PN80T_ID:I = 0x8

.field static final PREF:Ljava/lang/String; = "NciDeviceHost"

.field private static final TAG:Ljava/lang/String; = "NativeNfcManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsoDepMaxTransceiveLength:I

.field private final mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

.field private final mLock:Ljava/lang/Object;

.field private final mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

.field private mNative:J

.field private mNfcid2ToHandle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mT3tIdentifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    new-array v0, v0, [[B

    sput-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->EE_WIPE_APDUS:[[B

    .line 83
    const-string v0, "nfc_nci_jni_zte"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    .line 100
    iput-object p2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 101
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->initializeNativeStructure()Z

    .line 102
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mNfcid2ToHandle:Ljava/util/Map;

    .line 104
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-direct {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    .line 105
    return-void
.end method

.method private native doCommitRouting()V
.end method

.method private native doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.end method

.method private native doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.end method

.method private native doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doDeinitialize()Z
.end method

.method private native doDisableDtaMode()V
.end method

.method private native doDisableScreenOffSuspend()V
.end method

.method private native doDownload()Z
.end method

.method private native doDump(Ljava/io/FileDescriptor;)V
.end method

.method private native doEnableDiscovery(IZZZZ)V
.end method

.method private native doEnableDtaMode()V
.end method

.method private native doEnableScreenOffSuspend()V
.end method

.method private native doFactoryReset()V
.end method

.method private native doGetTimeout(I)I
.end method

.method private native doInitialize()Z
.end method

.method private native doResetTimeouts()V
.end method

.method private native doSetP2pInitiatorModes(I)V
.end method

.method private native doSetP2pTargetModes(I)V
.end method

.method private native doSetTimeout(II)Z
.end method

.method private native doShutdown()V
.end method

.method private native getIsoDepMaxTransceiveLength()I
.end method

.method private notifyAidRoutingTableFull()V
    .locals 1

    .line 869
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onAidRoutingTableFull()V

    .line 870
    return-void
.end method

.method private notifyConnectivityListeners(I)V
    .locals 1
    .param p1, "evtSrc"    # I

    .line 756
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onConnectivityEvent(I)V

    .line 757
    return-void
.end method

.method private notifyETSIReaderRequested(ZZ)V
    .locals 1
    .param p1, "istechA"    # Z
    .param p2, "istechB"    # Z

    .line 805
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderRequestedEvent(ZZ)V

    .line 806
    return-void
.end method

.method private notifyETSIReaderRequestedFail(I)V
    .locals 1
    .param p1, "FailureCause"    # I

    .line 809
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderRequestedFail(I)V

    .line 810
    return-void
.end method

.method private notifyEmvcoMultiCardDetectedListeners()V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onEmvcoMultiCardDetectedEvent()V

    .line 764
    return-void
.end method

.method private notifyFwDwnldRequested()V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onFwDwnldReqRestartNfc()V

    .line 801
    return-void
.end method

.method private notifyHostEmuActivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 849
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationActivated(I)V

    .line 850
    return-void
.end method

.method private notifyHostEmuData(I[B)V
    .locals 1
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 861
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationData(I[B)V

    .line 862
    return-void
.end method

.method private notifyHostEmuDeactivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 865
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationDeactivated(I)V

    .line 866
    return-void
.end method

.method private notifyJcosDownloadInProgress(I)V
    .locals 1
    .param p1, "enable"    # I

    .line 796
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRestartWatchDog(I)V

    .line 797
    return-void
.end method

.method private notifyLlcpLinkActivation(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .line 770
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 771
    return-void
.end method

.method private notifyLlcpLinkDeactivated(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .line 777
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 778
    return-void
.end method

.method private notifyLlcpLinkFirstPacketReceived(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .line 784
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 785
    return-void
.end method

.method private notifyNdefMessageListeners(Lcom/android/nfc/dhimpl/NativeNfcTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .line 742
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 743
    return-void
.end method

.method private notifyReRoutingEntry()V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onNotifyReRoutingEntry()V

    .line 858
    return-void
.end method

.method private notifyRfFieldActivated()V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 874
    return-void
.end method

.method private notifyRfFieldDeactivated()V
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 878
    return-void
.end method

.method private notifySeApduReceived([B)V
    .locals 1
    .param p1, "apdu"    # [B

    .line 837
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeApduReceived([B)V

    .line 838
    return-void
.end method

.method private notifySeEmvCardRemoval()V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeEmvCardRemoval()V

    .line 842
    return-void
.end method

.method private notifySeFieldActivated()V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 789
    return-void
.end method

.method private notifySeFieldDeactivated()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 793
    return-void
.end method

.method private notifySeListenActivated()V
    .locals 1

    .line 829
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeListenActivated()V

    .line 830
    return-void
.end method

.method private notifySeListenDeactivated()V
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeListenDeactivated()V

    .line 834
    return-void
.end method

.method private notifySeMifareAccess([B)V
    .locals 1
    .param p1, "block"    # [B

    .line 845
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeMifareAccess([B)V

    .line 846
    return-void
.end method

.method private notifyT3tConfigure()V
    .locals 1

    .line 853
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onNotifyT3tConfigure()V

    .line 854
    return-void
.end method

.method private notifyTargetDeselected()V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationDeselected()V

    .line 750
    return-void
.end method

.method private notifyTransactionListeners([B[BLjava/lang/String;)V
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "evtSrc"    # Ljava/lang/String;

    .line 885
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onNfcTransactionEvent([B[BLjava/lang/String;)V

    .line 886
    return-void
.end method

.method private notifyUiccStatusEvent(I)V
    .locals 1
    .param p1, "uiccStat"    # I

    .line 881
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onUiccStatusEvent(I)V

    .line 882
    return-void
.end method

.method private notifyonETSIReaderModeRestart()V
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderModeRestart()V

    .line 826
    return-void
.end method

.method private notifyonETSIReaderModeStartConfig(I)V
    .locals 1
    .param p1, "eeHandle"    # I

    .line 813
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderModeStartConfig(I)V

    .line 814
    return-void
.end method

.method private notifyonETSIReaderModeStopConfig(I)V
    .locals 1
    .param p1, "disc_ntf_timeout"    # I

    .line 817
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderModeStopConfig(I)V

    .line 818
    return-void
.end method

.method private notifyonETSIReaderModeSwpTimeout(I)V
    .locals 1
    .param p1, "disc_ntf_timeout"    # I

    .line 821
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onETSIReaderModeSwpTimeout(I)V

    .line 822
    return-void
.end method

.method static toHexString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 889
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 890
    .local v0, "HEX_CHARS":[C
    const/4 v1, 0x2

    mul-int v2, v1, p2

    new-array v2, v2, [C

    .line 891
    .local v2, "chars":[C
    move v3, p1

    .local v3, "j":I
    :goto_0
    add-int v4, p1, p2

    if-ge v3, v4, :cond_0

    .line 892
    sub-int v4, v3, p1

    mul-int/2addr v4, v1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v0, v5

    aput-char v5, v2, v4

    .line 893
    sub-int v4, v3, p1

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v2, v4

    .line 891
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 895
    .end local v3    # "j":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public native GetDefaultSE()I
.end method

.method public native JCOSDownload()I
.end method

.method public native SWPSelfTest(I)I
.end method

.method public canMakeReadOnly(I)Z
    .locals 2
    .param p1, "ndefType"    # I

    .line 521
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public checkFirmware()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "NativeNfcManager"

    const-string v1, "FW Download Success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_0
    const-string v0, "NativeNfcManager"

    const-string v1, "FW Download Failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void
.end method

.method public native clearAidTable()Z
.end method

.method public clearRoutingEntry(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doClearRoutingEntry(I)Z

    move-result v0

    return v0
.end method

.method public clearT3tIdentifiersCache()V
    .locals 2

    .line 665
    const-string v0, "NativeNfcManager"

    const-string v1, "clearT3tIdentifiersCache entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 668
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    const-string v0, "NativeNfcManager"

    const-string v1, "clearT3tIdentifiersCache exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void

    .line 668
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public commitRouting()V
    .locals 0

    .line 697
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCommitRouting()V

    .line 698
    return-void
.end method

.method public createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 5
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 420
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    move-result-object v0

    .line 421
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    if-eqz v0, :cond_0

    .line 422
    return-object v0

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v1

    .line 427
    .local v1, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/16 v2, -0xc

    if-eq v1, v2, :cond_1

    const/16 v2, -0x9

    if-eq v1, v2, :cond_1

    .line 434
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 432
    :cond_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v1}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 5
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 444
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;

    move-result-object v0

    .line 445
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-eqz v0, :cond_0

    .line 446
    return-object v0

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v1

    .line 451
    .local v1, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/16 v2, -0xc

    if-eq v1, v2, :cond_1

    const/16 v2, -0x9

    if-eq v1, v2, :cond_1

    .line 458
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 456
    :cond_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v1}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 5
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 468
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v0

    .line 469
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v0, :cond_0

    .line 470
    return-object v0

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v1

    .line 475
    .local v1, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/16 v2, -0xc

    if-eq v1, v2, :cond_1

    const/16 v2, -0x9

    if-eq v1, v2, :cond_1

    .line 482
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 480
    :cond_1
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v1}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2
.end method

.method public deinitialize()Z
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v1, "NciDeviceHost"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 184
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 186
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "se_wired"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeinitialize()Z

    move-result v2

    return v2
.end method

.method public deregisterT3tIdentifier([B)V
    .locals 6
    .param p1, "t3tIdentifier"    # [B

    .line 647
    const-string v0, "NativeNfcManager"

    const-string v1, "deregisterT3tIdentifier entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 650
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 651
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 652
    .local v2, "handle":I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 653
    .local v3, "value":[B
    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 654
    invoke-virtual {p0, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeregisterT3tIdentifier(I)V

    .line 655
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    goto :goto_1

    .line 658
    .end local v2    # "handle":I
    .end local v3    # "value":[B
    :cond_0
    goto :goto_0

    .line 659
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    const-string v0, "NativeNfcManager"

    const-string v1, "deregisterT3tIdentifier exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 659
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public native disableDiscovery()V
.end method

.method public disableDtaMode()V
    .locals 2

    .line 161
    const-string v0, "NativeNfcManager"

    const-string v1, "disableDtaMode : entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDisableDtaMode()V

    .line 163
    return-void
.end method

.method public disableScreenOffSuspend()Z
    .locals 1

    .line 605
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDisableScreenOffSuspend()V

    .line 606
    const/4 v0, 0x1

    return v0
.end method

.method public native doAbort(Ljava/lang/String;)V
.end method

.method public native doActivateLlcp()Z
.end method

.method public native doActivateSecureElement(I)V
.end method

.method public native doCheckJcopDlAtBoot()Z
.end method

.method public native doCheckLlcp()Z
.end method

.method public native doClearRoutingEntry(I)Z
.end method

.method public native doDeregisterT3tIdentifier(I)V
.end method

.method public native doDeselectSecureElement(I)V
.end method

.method public native doEnablep2p(Z)V
.end method

.method public native doGetActiveSecureElementList()[I
.end method

.method public native doGetLastError()I
.end method

.method public native doGetRouting()[B
.end method

.method public native doGetSeInterface(I)I
.end method

.method public native doGetSecureElementList()[I
.end method

.method public native doGetSecureElementTechList()I
.end method

.method public native doGetSecureElementUid()[B
.end method

.method public native doGetSelectedUicc()I
.end method

.method public native doNfcSelfTest(I)I
.end method

.method public native doPrbsOff()V
.end method

.method public native doPrbsOn(IIII)V
.end method

.method public native doRegisterT3tIdentifier([B)I
.end method

.method public native doRouteAid([BIII)Z
.end method

.method public native doSelectSecureElement(I)V
.end method

.method public native doSetEEPROM([B)V
.end method

.method public native doSetNfcMode(I)V
.end method

.method public native doSetProvisionMode(Z)V
.end method

.method public native doSetRoutingEntry(IIII)Z
.end method

.method public native doSetSEPowerOffState(IZ)V
.end method

.method public native doSetScreenOrPowerState(I)V
.end method

.method public native doSetScreenState(I)V
.end method

.method public native doSetSecureElementListenTechMask(I)V
.end method

.method public native doUnrouteAid([B)Z
.end method

.method public native doselectUicc(I)I
.end method

.method public download()Z
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDownload()Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 592
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDump(Ljava/io/FileDescriptor;)V

    .line 593
    return-void
.end method

.method public enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .locals 6
    .param p1, "params"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p2, "restart"    # Z

    .line 306
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableLowPowerDiscovery()Z

    move-result v2

    .line 307
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableReaderMode()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableP2p()Z

    move-result v4

    .line 306
    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDiscovery(IZZZZ)V

    .line 308
    return-void
.end method

.method public enableDtaMode()V
    .locals 2

    .line 153
    const-string v0, "NativeNfcManager"

    const-string v1, "enableDtaMode : entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDtaMode()V

    .line 155
    return-void
.end method

.method public enableScreenOffSuspend()Z
    .locals 1

    .line 598
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableScreenOffSuspend()V

    .line 599
    const/4 v0, 0x1

    return v0
.end method

.method public etsiInitConfig()V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doEtsiInitConfig()V

    .line 384
    return-void
.end method

.method public etsiReaderConfig(I)V
    .locals 1
    .param p1, "eeHandle"    # I

    .line 373
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doEtsiReaderConfig(I)V

    .line 374
    return-void
.end method

.method public etsiResetReaderConfig()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doEtsiResetReaderConfig()V

    .line 389
    return-void
.end method

.method public factoryReset()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doFactoryReset()V

    .line 170
    return-void
.end method

.method public native getAidTableSize()I
.end method

.method public native getChipVer()I
.end method

.method public native getDefaultAidPowerState()I
.end method

.method public native getDefaultAidRoute()I
.end method

.method public native getDefaultDesfirePowerState()I
.end method

.method public native getDefaultDesfireRoute()I
.end method

.method public getDefaultLlcpMiu()I
    .locals 1

    .line 581
    const/16 v0, 0x7bc

    return v0
.end method

.method public getDefaultLlcpRwSize()I
    .locals 1

    .line 586
    const/4 v0, 0x2

    return v0
.end method

.method public native getDefaultMifareCLTPowerState()I
.end method

.method public native getDefaultMifareCLTRoute()I
.end method

.method public getEtsiReaederState()I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doGetEtsiReaederState()I

    move-result v0

    .line 368
    .local v0, "state":I
    return v0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 2

    .line 567
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->getMaxTransceiveLength(I)I

    move-result v0

    const/16 v1, 0x105

    if-le v0, v1, :cond_0

    .line 568
    const/4 v0, 0x1

    return v0

    .line 570
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public native getFWVersion()I
.end method

.method public native getLfT3tMax()I
.end method

.method public getMaxTransceiveLength(I)I
    .locals 1
    .param p1, "technology"    # I

    .line 527
    const/16 v0, 0xfd

    packed-switch p1, :pswitch_data_0

    .line 544
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 538
    :pswitch_1
    return v0

    .line 542
    :pswitch_2
    const/16 v0, 0xff

    return v0

    .line 540
    :pswitch_3
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsoDepMaxTransceiveLength:I

    return v0

    .line 536
    :pswitch_4
    return v0

    .line 531
    :pswitch_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 194
    const-string v0, "android-nci"

    return-object v0
.end method

.method public native getNciVersion()I
.end method

.method public native getNfcInitTimeout()I
.end method

.method public native getRemainingAidTableSize()I
.end method

.method public getSecureElementUid()[B
    .locals 4

    .line 686
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetSecureElementUid()[B

    move-result-object v0

    .line 687
    .local v0, "buff":[B
    if-nez v0, :cond_0

    .line 690
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 691
    const-string v1, "NativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buff : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    return-object v0
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I

    .line 515
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetTimeout(I)I

    move-result v0

    return v0
.end method

.method public getWipeApdus()[[B
    .locals 1

    .line 576
    sget-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->EE_WIPE_APDUS:[[B

    return-object v0
.end method

.method public initialize()Z
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v1, "NciDeviceHost"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 136
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "se_wired"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const-wide/16 v3, 0x2ee0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 139
    const-string v3, "se_wired"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    goto :goto_0

    :catch_0
    move-exception v2

    .line 144
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitialize()Z

    move-result v2

    .line 145
    .local v2, "ret":Z
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->getIsoDepMaxTransceiveLength()I

    move-result v3

    iput v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsoDepMaxTransceiveLength:I

    .line 146
    return v2
.end method

.method public native initializeNativeStructure()Z
.end method

.method public native isNfccBusy()Z
.end method

.method public native isVzwFeatureEnabled()Z
.end method

.method public mposGetReaderMode()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doMposGetReaderMode()Z

    move-result v0

    return v0
.end method

.method public mposSetReaderMode(Z)I
    .locals 1
    .param p1, "on"    # Z

    .line 403
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doMposSetReaderMode(Z)I

    move-result v0

    return v0
.end method

.method public notifyEEReaderEvent(I)V
    .locals 1
    .param p1, "evt"    # I

    .line 378
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doNotifyEEReaderEvent(I)V

    .line 379
    return-void
.end method

.method public native readerPassThruMode(BB)[B
.end method

.method public registerT3tIdentifier([B)V
    .locals 4
    .param p1, "t3tIdentifier"    # [B

    .line 633
    const-string v0, "NativeNfcManager"

    const-string v1, " registerT3tIdentifier entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doRegisterT3tIdentifier([B)I

    move-result v1

    .line 636
    .local v1, "handle":I
    const v2, 0xffff

    if-eq v1, v2, :cond_0

    .line 637
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .end local v1    # "handle":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    const-string v0, "NativeNfcManager"

    const-string v1, "registerT3tIdentifier exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void

    .line 639
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resetTimeouts()V
    .locals 0

    .line 500
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doResetTimeouts()V

    .line 501
    return-void
.end method

.method public routeAid([BIII)Z
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "powerState"    # I
    .param p4, "aidInfo"    # I

    .line 203
    const/4 v0, 0x1

    .line 209
    .local v0, "status":Z
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doRouteAid([BIII)Z

    move-result v0

    .line 213
    return v0
.end method

.method public native routeApduPattern(II[B[B)Z
.end method

.method public native sendRawFrame([B)Z
.end method

.method public native setDefaultProtoRoute(III)V
.end method

.method public native setDefaultRoute(III)Z
.end method

.method public native setDefaultTechRoute(III)V
.end method

.method public native setEmvCoPollProfile(ZI)I
.end method

.method public setEtsiReaederState(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 361
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doSetEtsiReaederState(I)V

    .line 362
    return-void
.end method

.method public setP2pInitiatorModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .line 555
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pInitiatorModes(I)V

    .line 556
    return-void
.end method

.method public setP2pTargetModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .line 561
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pTargetModes(I)V

    .line 562
    return-void
.end method

.method public native setPreferredSimSlot(I)I
.end method

.method public setRoutingEntry(IIII)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "route"    # I
    .param p4, "power"    # I

    .line 283
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetRoutingEntry(IIII)Z

    move-result v0

    return v0
.end method

.method public setTimeout(II)Z
    .locals 1
    .param p1, "tech"    # I
    .param p2, "timeout"    # I

    .line 509
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetTimeout(II)Z

    move-result v0

    return v0
.end method

.method public native setTransitConfig(Ljava/lang/String;)I
.end method

.method public shutdown()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doShutdown()V

    .line 177
    return-void
.end method

.method public startPoll()V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doStartPoll()V

    .line 399
    return-void
.end method

.method public stopPoll(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 393
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mMposMgr:Lcom/android/nfc/dhimpl/NativeNfcMposManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcMposManager;->doStopPoll(I)V

    .line 394
    return-void
.end method

.method public native transceiveAppData([B)[B
.end method

.method public unrouteAid([B)Z
    .locals 1
    .param p1, "aid"    # [B

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doUnrouteAid([B)Z

    move-result v0

    return v0
.end method

.method public native unrouteApduPattern([B)Z
.end method

.method public native updateScreenState()V
.end method
