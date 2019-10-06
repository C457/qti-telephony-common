.class public Lcom/qti/debugreport/IZatXTRADebugReport;
.super Ljava/lang/Object;
.source "IZatXTRADebugReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;,
        Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;,
        Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;,
        Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;,
        Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;
    }
.end annotation


# static fields
.field private static final BDS_XTRA_DATA_AVAILABLE:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/qti/debugreport/IZatXTRADebugReport;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAL_XTRA_DATA_AVAILABLE:I = 0x8

.field private static final GLONASS_XTRA_DATA_AVAILABLE:I = 0x2

.field private static final GPS_XTRA_DATA_AVAILABLE:I = 0x1

.field private static final QZSS_XTRA_DATA_AVAILABLE:I = 0x10

.field private static TAG:Ljava/lang/String;

.field private static final VERBOSE:Z


# instance fields
.field private mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

.field private mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

.field private mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

.field private mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

.field private mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

.field private mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

.field private mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

.field private mValidityMask:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "IZatXTRAReport"

    sput-object v0, Lcom/qti/debugreport/IZatXTRADebugReport;->TAG:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/qti/debugreport/IZatXTRADebugReport;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qti/debugreport/IZatXTRADebugReport;->VERBOSE:Z

    .line 433
    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$1;

    invoke-direct {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$1;-><init>()V

    sput-object v0, Lcom/qti/debugreport/IZatXTRADebugReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 245
    const-class v0, Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatUtcSpec;

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    .line 249
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    invoke-direct {v0, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    .line 251
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->access$002(Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;I)I

    .line 252
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->access$102(Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;I)I

    .line 255
    :cond_0
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 256
    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    invoke-direct {v0, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    .line 257
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->access$202(Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;I)I

    .line 258
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->access$302(Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;I)I

    .line 261
    :cond_1
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 262
    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    invoke-direct {v0, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    .line 263
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->access$402(Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;J)J

    .line 264
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->access$502(Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;I)I

    .line 267
    :cond_2
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 268
    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    invoke-direct {v0, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    .line 269
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->access$602(Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;J)J

    .line 270
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->access$702(Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;I)I

    .line 273
    :cond_3
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 274
    new-instance v0, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    invoke-direct {v0, p0}, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    .line 275
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->access$802(Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;B)B

    .line 276
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->access$902(Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;I)I

    .line 278
    :cond_4
    return-void
.end method

.method public constructor <init>(Lcom/qti/debugreport/IZatUtcSpec;Lcom/qti/debugreport/IZatUtcSpec;BIIIIJIJIBI)V
    .locals 17
    .param p1, "utcTimeLastUpdated"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p2, "utcTimeLastReported"    # Lcom/qti/debugreport/IZatUtcSpec;
    .param p3, "validityMask"    # B
    .param p4, "gpsXtraValidity"    # I
    .param p5, "gpsXtraAge"    # I
    .param p6, "glonassXtraValidity"    # I
    .param p7, "glonassXtraAge"    # I
    .param p8, "bdsXtraValidity"    # J
    .param p10, "bdsXtraAge"    # I
    .param p11, "galXtraValidity"    # J
    .param p13, "galXtraAge"    # I
    .param p14, "qzssXtraValidity"    # B
    .param p15, "qzssXtraAge"    # I

    move-object/from16 v0, p0

    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 207
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    .line 208
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    .line 210
    move/from16 v3, p3

    iput-byte v3, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    .line 212
    iget-byte v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 213
    new-instance v4, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    invoke-direct {v4, v0}, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    .line 214
    iget-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    move/from16 v5, p4

    invoke-static {v4, v5}, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->access$002(Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;I)I

    .line 215
    iget-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    move/from16 v6, p5

    invoke-static {v4, v6}, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->access$102(Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;I)I

    goto :goto_0

    .line 218
    :cond_0
    move/from16 v5, p4

    move/from16 v6, p5

    :goto_0
    iget-byte v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 219
    new-instance v4, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    invoke-direct {v4, v0}, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    .line 220
    iget-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    move/from16 v7, p6

    invoke-static {v4, v7}, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->access$202(Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;I)I

    .line 221
    iget-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    move/from16 v8, p7

    invoke-static {v4, v8}, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->access$302(Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;I)I

    goto :goto_1

    .line 224
    :cond_1
    move/from16 v7, p6

    move/from16 v8, p7

    :goto_1
    iget-byte v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    .line 225
    new-instance v4, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    invoke-direct {v4, v0}, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    .line 226
    iget-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    move-wide/from16 v9, p8

    invoke-static {v4, v9, v10}, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->access$402(Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;J)J

    .line 227
    iget-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    move/from16 v11, p10

    invoke-static {v4, v11}, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->access$502(Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;I)I

    goto :goto_2

    .line 230
    :cond_2
    move-wide/from16 v9, p8

    move/from16 v11, p10

    :goto_2
    iget-byte v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 231
    new-instance v4, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    invoke-direct {v4, v0}, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    .line 232
    iget-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    move-wide/from16 v12, p11

    invoke-static {v4, v12, v13}, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->access$602(Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;J)J

    .line 233
    iget-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    move/from16 v14, p13

    invoke-static {v4, v14}, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->access$702(Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;I)I

    goto :goto_3

    .line 236
    :cond_3
    move-wide/from16 v12, p11

    move/from16 v14, p13

    :goto_3
    iget-byte v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    .line 237
    new-instance v4, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    invoke-direct {v4, v0}, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;-><init>(Lcom/qti/debugreport/IZatXTRADebugReport;)V

    iput-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    .line 238
    iget-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    move/from16 v15, p14

    invoke-static {v4, v15}, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->access$802(Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;B)B

    .line 239
    iget-object v4, v0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    move/from16 v0, p15

    invoke-static {v4, v0}, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->access$902(Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;I)I

    goto :goto_4

    .line 241
    :cond_4
    move/from16 v15, p14

    move/from16 v0, p15

    :goto_4
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 395
    const/4 v0, 0x0

    return v0
.end method

.method public getLastReportedUTCTime()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getUTCTimestamp()Lcom/qti/debugreport/IZatUtcSpec;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    return-object v0
.end method

.method public getXtraDataValidityForBDS()Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    return-object v0
.end method

.method public getXtraDataValidityForGPS()Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    return-object v0
.end method

.method public getXtraDataValidityForGal()Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    return-object v0
.end method

.method public getXtraDataValidityForGlonass()Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    return-object v0
.end method

.method public getXtraDataValidityForQzss()Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    return-object v0
.end method

.method public hasBdsXtraInfo()Z
    .locals 1

    .line 309
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGalXtraInfo()Z
    .locals 1

    .line 318
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGlonassXtraInfo()Z
    .locals 1

    .line 300
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGpsXtraInfo()Z
    .locals 2

    .line 291
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasQzssXtraInfo()Z
    .locals 1

    .line 326
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 400
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastUpdated:Lcom/qti/debugreport/IZatUtcSpec;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 401
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mUtcTimeLastReported:Lcom/qti/debugreport/IZatUtcSpec;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 403
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 405
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    invoke-static {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->access$000(Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGpsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;

    invoke-static {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;->access$100(Lcom/qti/debugreport/IZatXTRADebugReport$GpsXtraValidityInfo;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    :cond_0
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    invoke-static {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->access$200(Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGlonassXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;

    invoke-static {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;->access$300(Lcom/qti/debugreport/IZatXTRADebugReport$GlonassXtraValidityInfo;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    :cond_1
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    invoke-static {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->access$400(Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 417
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mBdsXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;

    invoke-static {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;->access$500(Lcom/qti/debugreport/IZatXTRADebugReport$BdsXtraValidityInfo;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    :cond_2
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    invoke-static {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->access$600(Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 422
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mGalXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;

    invoke-static {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;->access$700(Lcom/qti/debugreport/IZatXTRADebugReport$GalXtraValidityInfo;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    :cond_3
    iget-byte v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mValidityMask:B

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 426
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    invoke-static {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->access$800(Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;)B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 427
    iget-object v0, p0, Lcom/qti/debugreport/IZatXTRADebugReport;->mQzssXtraValidityInfo:Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;

    invoke-static {v0}, Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;->access$900(Lcom/qti/debugreport/IZatXTRADebugReport$QzssXtraValidityInfo;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    :cond_4
    return-void
.end method
