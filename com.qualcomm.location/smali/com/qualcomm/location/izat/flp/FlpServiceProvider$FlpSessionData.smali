.class Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
.super Ljava/lang/Object;
.source "FlpServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlpSessionData"
.end annotation


# instance fields
.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private mDistanceIntervalMps:I

.field private mFlags:I

.field private mId:I

.field private mIsRunning:Z

.field private mPeriodNs:J

.field private mPowerMode:I

.field private mTbmMs:J

.field private mTripDistanceM:J

.field final synthetic this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;IIJIJIJILjava/lang/String;)V
    .locals 2
    .param p2, "id"    # I
    .param p3, "flags"    # I
    .param p4, "period_ms"    # J
    .param p6, "distance_interval_mps"    # I
    .param p7, "trip_distance_m"    # J
    .param p9, "power_mode"    # I
    .param p10, "tbm_ms"    # J
    .param p12, "calling_uid"    # I
    .param p13, "calling_package"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput p2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mId:I

    .line 126
    iput p3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mFlags:I

    .line 127
    invoke-static {p4, p5}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$000(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mPeriodNs:J

    .line 128
    iput p6, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mDistanceIntervalMps:I

    .line 129
    iput-wide p7, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mTripDistanceM:J

    .line 130
    iput p9, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mPowerMode:I

    .line 131
    iput-wide p10, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mTbmMs:J

    .line 132
    iput p12, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mCallingUid:I

    .line 133
    iput-object p13, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mCallingPackage:Ljava/lang/String;

    .line 134
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mIsRunning:Z

    .line 135
    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 104
    iget-wide v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mTbmMs:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    .param p1, "x1"    # J

    .line 104
    iput-wide p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mTbmMs:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 104
    iget v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mCallingUid:I

    return v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 104
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 104
    iget v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mId:I

    return v0
.end method

.method static synthetic access$302(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    .param p1, "x1"    # I

    .line 104
    iput p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mId:I

    return p1
.end method

.method static synthetic access$400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 104
    iget-boolean v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    .param p1, "x1"    # Z

    .line 104
    iput-boolean p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 104
    iget v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mFlags:I

    return v0
.end method

.method static synthetic access$502(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    .param p1, "x1"    # I

    .line 104
    iput p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mFlags:I

    return p1
.end method

.method static synthetic access$600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 104
    iget-wide v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mPeriodNs:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    .param p1, "x1"    # J

    .line 104
    iput-wide p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mPeriodNs:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 104
    iget v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mDistanceIntervalMps:I

    return v0
.end method

.method static synthetic access$702(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    .param p1, "x1"    # I

    .line 104
    iput p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mDistanceIntervalMps:I

    return p1
.end method

.method static synthetic access$800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J
    .locals 2
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 104
    iget-wide v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mTripDistanceM:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;J)J
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    .param p1, "x1"    # J

    .line 104
    iput-wide p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mTripDistanceM:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 104
    iget v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mPowerMode:I

    return v0
.end method

.method static synthetic access$902(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    .param p1, "x1"    # I

    .line 104
    iput p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->mPowerMode:I

    return p1
.end method
