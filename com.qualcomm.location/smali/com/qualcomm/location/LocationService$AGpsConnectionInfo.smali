.class Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
.super Ljava/lang/Object;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AGpsConnectionInfo"
.end annotation


# static fields
.field private static final APN_TYPE_MASK_CBS:I = 0x80

.field private static final APN_TYPE_MASK_DEFAULT:I = 0x1

.field private static final APN_TYPE_MASK_DUN:I = 0x8

.field private static final APN_TYPE_MASK_EMERGENCY:I = 0x200

.field private static final APN_TYPE_MASK_FOTA:I = 0x40

.field private static final APN_TYPE_MASK_HIPRI:I = 0x20

.field private static final APN_TYPE_MASK_IA:I = 0x100

.field private static final APN_TYPE_MASK_IMS:I = 0x2

.field private static final APN_TYPE_MASK_MMS:I = 0x4

.field private static final APN_TYPE_MASK_SUPL:I = 0x10

.field private static final BEARER_INVALID:I = -0x1

.field private static final BEARER_IPV4:I = 0x0

.field private static final BEARER_IPV4V6:I = 0x2

.field private static final BEARER_IPV6:I = 0x1

.field private static final CONNECTION_TYPE_ANY:I = 0x0

.field private static final CONNECTION_TYPE_C2K:I = 0x2

.field private static final CONNECTION_TYPE_SUPL:I = 0x1

.field private static final CONNECTION_TYPE_SUPL_ES:I = 0x5

.field private static final CONNECTION_TYPE_WIFI:I = 0x4

.field private static final CONNECTION_TYPE_WWAN_ANY:I = 0x3

.field private static final STATE_CLOSED:I = 0x0

.field private static final STATE_KEEP_OPEN:I = 0x3

.field private static final STATE_OPEN:I = 0x2

.field private static final STATE_OPENING:I = 0x1


# instance fields
.field private mAPN:Ljava/lang/String;

.field private final mAgpsType:I

.field private mBearerType:I

.field private final mCMConnType:I

.field private mIPvVerType:I

.field private mIpAddr:Ljava/net/InetAddress;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mPHConnFeatureStr:Ljava/lang/String;

.field private mState:I

.field final synthetic this$0:Lcom/qualcomm/location/LocationService;


# direct methods
.method private constructor <init>(Lcom/qualcomm/location/LocationService;II)V
    .locals 1
    .param p2, "connMgrConnType"    # I
    .param p3, "agpsType"    # I

    .line 717
    iput-object p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput p2, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mCMConnType:I

    .line 719
    iput p3, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAgpsType:I

    .line 720
    const/4 p1, 0x3

    if-ne p1, p2, :cond_0

    .line 721
    const-string p1, "enableSUPL"

    iput-object p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    goto :goto_0

    .line 723
    :cond_0
    const-string p1, "enableHIPRI"

    iput-object p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    .line 725
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mState:I

    .line 727
    iput-object p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;

    .line 728
    const/4 p1, -0x1

    iput p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mBearerType:I

    .line 729
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/location/LocationService;IILcom/qualcomm/location/LocationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/qualcomm/location/LocationService$1;

    .line 672
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;-><init>(Lcom/qualcomm/location/LocationService;II)V

    return-void
.end method

.method private constructor <init>(Lcom/qualcomm/location/LocationService;Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)V
    .locals 0
    .param p2, "info"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    .line 730
    iput-object p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iget p1, p2, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mCMConnType:I

    iput p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mCMConnType:I

    .line 732
    iget p1, p2, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAgpsType:I

    iput p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAgpsType:I

    .line 733
    iget-object p1, p2, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    iput-object p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;

    .line 734
    iget-object p1, p2, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    iput-object p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 735
    iget p1, p2, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mIPvVerType:I

    iput p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mIPvVerType:I

    .line 736
    iget p1, p2, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mState:I

    iput p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mState:I

    .line 737
    iget-object p1, p2, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;

    iput-object p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;

    .line 738
    iget p1, p2, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mBearerType:I

    iput p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mBearerType:I

    .line 739
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/location/LocationService;Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;Lcom/qualcomm/location/LocationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/location/LocationService;
    .param p2, "x1"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    .param p3, "x2"    # Lcom/qualcomm/location/LocationService$1;

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;-><init>(Lcom/qualcomm/location/LocationService;Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 672
    invoke-direct {p0, p1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;Landroid/net/NetworkInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .line 672
    invoke-direct {p0, p1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->getBearerType(Landroid/net/NetworkInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    .line 672
    invoke-direct {p0}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->getCMConnType()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;II)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->connect(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    .line 672
    iget v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAgpsType:I

    return v0
.end method

.method static synthetic access$1600(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    .line 672
    iget v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mBearerType:I

    return v0
.end method

.method static synthetic access$600(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    .line 672
    iget v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mState:I

    return v0
.end method

.method static synthetic access$602(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    .param p1, "x1"    # I

    .line 672
    iput p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mState:I

    return p1
.end method

.method static synthetic access$700(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    .line 672
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 672
    iput-object p1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->release(IZ)V

    return-void
.end method

.method private connect(II)V
    .locals 6
    .param p1, "connType"    # I
    .param p2, "apnTypeMask"    # I

    .line 832
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    .line 833
    invoke-static {v0}, Lcom/qualcomm/location/LocationService;->access$2300(Lcom/qualcomm/location/LocationService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 834
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/qualcomm/location/LocationService;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    const-string v1, "LocSvc_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect() type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " apnTypeMask:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_1

    .line 839
    new-instance v1, Lcom/qualcomm/location/LocationService$LocNetworkCallback;

    iget-object v2, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-direct {v1, v2, p1}, Lcom/qualcomm/location/LocationService$LocNetworkCallback;-><init>(Lcom/qualcomm/location/LocationService;I)V

    iput-object v1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 841
    :cond_1
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 842
    .local v1, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 843
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_2

    and-int/lit8 v3, p2, 0x20

    if-eqz v3, :cond_3

    .line 845
    :cond_2
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 847
    :cond_3
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_4

    .line 848
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 850
    :cond_4
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_5

    .line 851
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 853
    :cond_5
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_6

    .line 854
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 856
    :cond_6
    and-int/lit8 v2, p2, 0x10

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 857
    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 859
    :cond_7
    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_8

    .line 860
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 862
    :cond_8
    and-int/lit16 v2, p2, 0x80

    if-eqz v2, :cond_9

    .line 863
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 865
    :cond_9
    and-int/lit16 v2, p2, 0x100

    if-eqz v2, :cond_a

    .line 866
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 868
    :cond_a
    and-int/lit16 v2, p2, 0x200

    if-eqz v2, :cond_b

    .line 869
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 871
    :cond_b
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 872
    .local v2, "request":Landroid/net/NetworkRequest;
    iget-object v4, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/16 v5, 0x7148

    invoke-virtual {v0, v2, v4, v5}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    .line 874
    iput v3, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mState:I

    .line 875
    return-void
.end method

.method private getAgpsType()I
    .locals 1

    .line 741
    iget v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAgpsType:I

    return v0
.end method

.method private getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 751
    if-eqz p1, :cond_0

    .line 752
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    iget-object v1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-static {v1}, Lcom/qualcomm/location/LocationService;->access$2200(Lcom/qualcomm/location/LocationService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/location/LocationService;->access$2102(Lcom/qualcomm/location/LocationService;Ljava/lang/String;)Ljava/lang/String;

    .line 758
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-static {v0}, Lcom/qualcomm/location/LocationService;->access$2100(Lcom/qualcomm/location/LocationService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 761
    :cond_1
    invoke-static {}, Lcom/qualcomm/location/LocationService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "LocSvc_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApn(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    return-object v0
.end method

.method private getBearerType(Landroid/net/NetworkInfo;)I
    .locals 11
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .line 765
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 766
    invoke-direct {p0, p1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->getApn(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    .line 768
    :cond_0
    const/4 v0, 0x0

    .line 769
    .local v0, "ipProtocol":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    .line 770
    invoke-static {v1}, Lcom/qualcomm/location/LocationService;->access$2300(Lcom/qualcomm/location/LocationService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 773
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 774
    .local v2, "networkType":I
    const/4 v3, 0x0

    .line 775
    .local v3, "selection":Ljava/lang/String;
    const/16 v4, 0xe

    if-ne v4, v2, :cond_1

    .line 776
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apn = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 777
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and type LIKE \'%supl%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 778
    :cond_1
    if-nez v2, :cond_2

    .line 780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "apn = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and carrier_enabled = 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 782
    const/4 v4, 0x5

    iget v5, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAgpsType:I

    if-ne v4, v5, :cond_3

    .line 783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and type LIKE \'%emergency%\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 786
    :cond_2
    const-string v3, "current = 1"

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and apn = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 788
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and carrier_enabled = 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 792
    :cond_3
    :goto_0
    const/4 v10, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    .line 793
    invoke-static {v4}, Lcom/qualcomm/location/LocationService;->access$2300(Lcom/qualcomm/location/LocationService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "protocol"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "name ASC"

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_5

    .line 799
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 800
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    .line 803
    :cond_4
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 804
    goto :goto_1

    .line 803
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 808
    .end local v4    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v4

    .line 809
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "LocSvc_java"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " on mContext.getContentResolver().query"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 806
    :catch_1
    move-exception v4

    .line 807
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    const-string v5, "LocSvc_java"

    const-string v6, "SQLiteException on mContext.getContentResolver().query"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_5
    :goto_1
    nop

    .line 811
    :goto_2
    const-string v4, "LocSvc_java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ipProtocol: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " apn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mAPN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " networkType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 811
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    const/4 v4, 0x2

    if-nez v0, :cond_6

    .line 815
    const-string v5, "LocSvc_java"

    const-string v6, "ipProtocol not found in db, default to ipv4v6"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iput v4, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mBearerType:I

    goto :goto_3

    .line 817
    :cond_6
    const-string v5, "IPV6"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 818
    const/4 v4, 0x1

    iput v4, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mBearerType:I

    goto :goto_3

    .line 819
    :cond_7
    const-string v5, "IPV4V6"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 820
    iput v4, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mBearerType:I

    goto :goto_3

    .line 821
    :cond_8
    const-string v5, "IPV4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 822
    iput v10, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mBearerType:I

    goto :goto_3

    .line 824
    :cond_9
    const-string v5, "LocSvc_java"

    const-string v6, "ipProtocol value not expected, default to ipv4v6"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iput v4, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mBearerType:I

    .line 828
    :goto_3
    iget v4, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mBearerType:I

    return v4
.end method

.method private getCMConnType()I
    .locals 1

    .line 744
    iget v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mCMConnType:I

    return v0
.end method

.method private getIpAddr()Ljava/net/InetAddress;
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mIpAddr:Ljava/net/InetAddress;

    return-object v0
.end method

.method private release(IZ)V
    .locals 4
    .param p1, "connType"    # I
    .param p2, "success"    # Z

    .line 878
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    .line 879
    invoke-static {v0}, Lcom/qualcomm/location/LocationService;->access$2300(Lcom/qualcomm/location/LocationService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 880
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    invoke-static {}, Lcom/qualcomm/location/LocationService;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LocSvc_java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release() type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_2

    .line 883
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    goto :goto_0

    .line 884
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "LocSvc_java"

    const-string v3, "Exception in unregister NetworkCallback !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    if-eqz p2, :cond_1

    .line 888
    iget-object v1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-static {v1, p1}, Lcom/qualcomm/location/LocationService;->access$2400(Lcom/qualcomm/location/LocationService;I)V

    goto :goto_1

    .line 891
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-static {v1, p1}, Lcom/qualcomm/location/LocationService;->access$2500(Lcom/qualcomm/location/LocationService;I)V

    .line 894
    :cond_2
    :goto_1
    return-void
.end method
