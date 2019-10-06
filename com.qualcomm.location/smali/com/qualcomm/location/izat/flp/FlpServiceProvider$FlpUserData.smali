.class Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
.super Lcom/qualcomm/location/izat/CallbackData;
.source "FlpServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlpUserData"
.end annotation


# instance fields
.field private mBgSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksForBgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qti/flp/ILocationCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksForFgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qti/flp/ILocationCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksForPassiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qti/flp/ILocationCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksForStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qti/flp/ISessionStatusCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFlpSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPowerCallbacksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/flp/IMaxPowerAllocatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryCbQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/Pair<",
            "Lcom/qti/flp/ILocationCallback;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;


# direct methods
.method private constructor <init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-direct {p0}, Lcom/qualcomm/location/izat/CallbackData;-><init>()V

    .line 151
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mBgSessionMap:Ljava/util/Map;

    .line 152
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mFlpSessionMap:Ljava/util/Map;

    .line 155
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mQueryCbQueue:Ljava/util/Queue;

    .line 159
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mCallbacksForBgMap:Ljava/util/Map;

    .line 161
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mCallbacksForFgMap:Ljava/util/Map;

    .line 163
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mCallbacksForPassiveMap:Ljava/util/Map;

    .line 165
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mCallbacksForStatusMap:Ljava/util/Map;

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mMaxPowerCallbacksList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    .param p2, "x1"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;

    .line 150
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 150
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mCallbacksForBgMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 150
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mFlpSessionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 150
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mBgSessionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 150
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mCallbacksForFgMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 150
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mCallbacksForPassiveMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 150
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mCallbacksForStatusMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 150
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mQueryCbQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 150
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->mMaxPowerCallbacksList:Ljava/util/List;

    return-object v0
.end method
