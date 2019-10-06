.class public Lcom/qti/debugreport/IZatSVHealthDebugReport;
.super Ljava/lang/Object;
.source "IZatSVHealthDebugReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mBdsBadMask:J

.field private mBdsGoodMask:J

.field private mBdsSVHealthState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;"
        }
    .end annotation
.end field

.field private mBdsUnknownMask:J

.field private mGalBadMask:J

.field private mGalGoodMask:J

.field private mGalSVHealthState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;"
        }
    .end annotation
.end field

.field private mGalUnknownMask:J

.field private mGlonassBadMask:I

.field private mGlonassGoodMask:I

.field private mGlonassSVHealthState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;"
        }
    .end annotation
.end field

.field private mGlonassUnknownMask:I

.field private mGpsBadMask:I

.field private mGpsGoodMask:I

.field private mGpsSVHealthState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsUnknownMask:I

.field private mQzssBadMask:B

.field private mQzssGoodMask:B

.field private mQzssSVHealthState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;"
        }
    .end annotation
.end field

.field private mQzssUnknownMask:B

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-string v0, "IZatSVHealthReport"

    sput-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->TAG:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->VERBOSE:Z

    .line 258
    new-instance v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$1;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatSVHealthDebugReport$1;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsSVHealthState:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassSVHealthState:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsSVHealthState:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalSVHealthState:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssSVHealthState:Ljava/util/List;

    .line 144
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 145
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsGoodMask:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsBadMask:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsUnknownMask:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassGoodMask:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassBadMask:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassUnknownMask:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsGoodMask:J

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsBadMask:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsUnknownMask:J

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalGoodMask:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalBadMask:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalUnknownMask:J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssGoodMask:B

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssBadMask:B

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssUnknownMask:B

    .line 165
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsSVHealthState:Ljava/util/List;

    iget v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsGoodMask:I

    iget v2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsBadMask:I

    iget v3, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsUnknownMask:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;III)V

    .line 166
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassSVHealthState:Ljava/util/List;

    iget v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassGoodMask:I

    iget v2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassBadMask:I

    iget v3, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassUnknownMask:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;III)V

    .line 167
    iget-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsSVHealthState:Ljava/util/List;

    iget-wide v2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsGoodMask:J

    iget-wide v4, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsBadMask:J

    iget-wide v6, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsUnknownMask:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;JJJ)V

    .line 168
    iget-object v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalSVHealthState:Ljava/util/List;

    iget-wide v2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalGoodMask:J

    iget-wide v4, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalBadMask:J

    iget-wide v6, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalUnknownMask:J

    invoke-direct/range {v0 .. v7}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;JJJ)V

    .line 169
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssSVHealthState:Ljava/util/List;

    iget-byte v1, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssGoodMask:B

    iget-byte v2, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssBadMask:B

    iget-byte v3, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssUnknownMask:B

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;BBB)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;IIIIIIJJJJJJBBB)V
    .locals 17
    .param p1, "utcTimeLastUpdated"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p2, "utcTimeLastReported"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p3, "gpsGoodMask"    # I
    .param p4, "gpsBadMask"    # I
    .param p5, "gpsUnknownMask"    # I
    .param p6, "glonassGoodMask"    # I
    .param p7, "glonassBadMask"    # I
    .param p8, "glonassUnknownMask"    # I
    .param p9, "bdsGoodMask"    # J
    .param p11, "bdsBadMask"    # J
    .param p13, "bdsUnknownMask"    # J
    .param p15, "galGoodMask"    # J
    .param p17, "galBadMask"    # J
    .param p19, "galUnknownMask"    # J
    .param p21, "qzssGoodMask"    # B
    .param p22, "qzssBadMask"    # B
    .param p23, "qzssUnknownMask"    # B

    move-object/from16 v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p21

    move/from16 v6, p22

    .line 115
    move/from16 v7, p23

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsSVHealthState:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassSVHealthState:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsSVHealthState:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalSVHealthState:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssSVHealthState:Ljava/util/List;

    .line 117
    move-object/from16 v4, p1

    iput-object v4, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 118
    move-object/from16 v5, p2

    iput-object v5, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 120
    iput v9, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsGoodMask:I

    .line 121
    iput v10, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsBadMask:I

    .line 122
    iput v11, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsUnknownMask:I

    .line 123
    iput v12, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassGoodMask:I

    .line 124
    iput v13, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassBadMask:I

    .line 125
    iput v14, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassUnknownMask:I

    .line 126
    move-wide/from16 v2, p9

    iput-wide v2, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsGoodMask:J

    .line 127
    move-wide/from16 v0, p11

    iput-wide v0, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsBadMask:J

    .line 128
    move-wide/from16 v4, p13

    iput-wide v4, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsUnknownMask:J

    .line 129
    move-wide/from16 v4, p15

    iput-wide v4, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalGoodMask:J

    .line 130
    move-wide/from16 v4, p17

    iput-wide v4, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalBadMask:J

    .line 131
    move-wide/from16 v4, p19

    iput-wide v4, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalUnknownMask:J

    .line 132
    iput-byte v15, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssGoodMask:B

    .line 133
    iput-byte v6, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssBadMask:B

    .line 134
    iput-byte v7, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssUnknownMask:B

    .line 136
    iget-object v0, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsSVHealthState:Ljava/util/List;

    invoke-direct {v8, v0, v9, v10, v11}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;III)V

    .line 137
    iget-object v0, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassSVHealthState:Ljava/util/List;

    invoke-direct {v8, v0, v12, v13, v14}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;III)V

    .line 138
    iget-object v1, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsSVHealthState:Ljava/util/List;

    move-object v0, v8

    move-wide/from16 v4, p11

    move v9, v6

    move v10, v7

    move-wide/from16 v6, p13

    invoke-direct/range {v0 .. v7}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;JJJ)V

    .line 139
    iget-object v1, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalSVHealthState:Ljava/util/List;

    move-wide/from16 v2, p15

    move-wide/from16 v4, p17

    move-wide/from16 v6, p19

    invoke-direct/range {v0 .. v7}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;JJJ)V

    .line 140
    iget-object v0, v8, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssSVHealthState:Ljava/util/List;

    invoke-direct {v8, v0, v15, v9, v10}, Lcom/qti/debugreport/IZatSVHealthDebugReport;->fillSVHealthList(Ljava/util/List;BBB)V

    .line 141
    return-void
.end method

.method private fillSVHealthList(Ljava/util/List;BBB)V
    .locals 3
    .param p2, "goodMask"    # B
    .param p3, "badMask"    # B
    .param p4, "unknowMask"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;BBB)V"
        }
    .end annotation

    .line 197
    .local p1, "listSVHealth":Ljava/util/List;, "Ljava/util/List<Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;>;"
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    .line 198
    const/4 v1, 0x1

    shl-int v2, v1, v0

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    .line 199
    sget-object v1, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_GOOD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 200
    :cond_0
    shl-int/2addr v1, v0

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    .line 201
    sget-object v1, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_BAD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 203
    :cond_1
    sget-object v1, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_UNKNOWN:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :goto_1
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0

    .line 206
    .end local v0    # "i":B
    :cond_2
    return-void
.end method

.method private fillSVHealthList(Ljava/util/List;III)V
    .locals 3
    .param p2, "goodMask"    # I
    .param p3, "badMask"    # I
    .param p4, "unknowMask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;III)V"
        }
    .end annotation

    .line 173
    .local p1, "listSVHealth":Ljava/util/List;, "Ljava/util/List<Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 174
    const/4 v1, 0x1

    shl-int v2, v1, v0

    and-int/2addr v2, p2

    if-eqz v2, :cond_0

    .line 175
    sget-object v1, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_GOOD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 176
    :cond_0
    shl-int/2addr v1, v0

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    .line 177
    sget-object v1, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_BAD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 179
    :cond_1
    sget-object v1, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_UNKNOWN:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private fillSVHealthList(Ljava/util/List;JJJ)V
    .locals 11
    .param p2, "goodMask"    # J
    .param p4, "badMask"    # J
    .param p6, "unknowMask"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;JJJ)V"
        }
    .end annotation

    .local p1, "listSVHealth":Ljava/util/List;, "Ljava/util/List<Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;>;"
    move-object v0, p1

    .line 185
    const-wide/16 v1, 0x0

    move-wide v3, v1

    .local v3, "i":J
    :goto_0
    const-wide/16 v5, 0x40

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    .line 186
    long-to-int v5, v3

    const-wide/16 v6, 0x1

    shl-long v8, v6, v5

    and-long/2addr v8, p2

    cmp-long v5, v8, v1

    if-eqz v5, :cond_0

    .line 187
    sget-object v5, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_GOOD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    :cond_0
    long-to-int v5, v3

    shl-long v8, v6, v5

    and-long/2addr v8, p4

    cmp-long v5, v8, v1

    if-eqz v5, :cond_1

    .line 189
    sget-object v5, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_BAD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    :cond_1
    sget-object v5, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_UNKNOWN:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_1
    add-long/2addr v3, v6

    goto :goto_0

    .line 194
    .end local v3    # "i":J
    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getSVHealthForBDS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsSVHealthState:Ljava/util/List;

    return-object v0
.end method

.method public getSVHealthForGPS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsSVHealthState:Ljava/util/List;

    return-object v0
.end method

.method public getSVHealthForGal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalSVHealthState:Ljava/util/List;

    return-object v0
.end method

.method public getSVHealthForGlonass()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassSVHealthState:Ljava/util/List;

    return-object v0
.end method

.method public getSVHealthForQzss()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssSVHealthState:Ljava/util/List;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 234
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 235
    iget-object v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 237
    iget v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsGoodMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsBadMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGpsUnknownMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassGoodMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassBadMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGlonassUnknownMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsGoodMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsBadMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mBdsUnknownMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalGoodMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalBadMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    iget-wide v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mGalUnknownMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-byte v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssGoodMask:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 252
    iget-byte v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssBadMask:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 253
    iget-byte v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport;->mQzssUnknownMask:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 254
    return-void
.end method
