.class Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
.super Ljava/lang/Object;
.source "FlpServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgSessionData"
.end annotation


# instance fields
.field private mBgNotificationType:I

.field private mSessionStartTime:J

.field final synthetic this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V
    .locals 2

    .line 95
    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 p1, 0x1

    iput p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->mBgNotificationType:I

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->mSessionStartTime:J

    .line 98
    return-void
.end method

.method static synthetic access$2100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;)J
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;

    .line 91
    iget-wide v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->mSessionStartTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    .param p1, "x1"    # J

    .line 91
    iput-wide p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->mSessionStartTime:J

    return-wide p1
.end method

.method static synthetic access$3000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;

    .line 91
    iget v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->mBgNotificationType:I

    return v0
.end method

.method static synthetic access$3002(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->mBgNotificationType:I

    return p1
.end method
