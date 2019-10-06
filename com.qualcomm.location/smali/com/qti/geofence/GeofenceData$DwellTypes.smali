.class public final enum Lcom/qti/geofence/GeofenceData$DwellTypes;
.super Ljava/lang/Enum;
.source "GeofenceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/geofence/GeofenceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DwellTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/geofence/GeofenceData$DwellTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/geofence/GeofenceData$DwellTypes;

.field public static final enum DWELL_TYPE_INSIDE:Lcom/qti/geofence/GeofenceData$DwellTypes;

.field public static final enum DWELL_TYPE_INSIDE_OUTSIDE:Lcom/qti/geofence/GeofenceData$DwellTypes;

.field public static final enum DWELL_TYPE_OUTSIDE:Lcom/qti/geofence/GeofenceData$DwellTypes;

.field public static final enum UNKNOWN:Lcom/qti/geofence/GeofenceData$DwellTypes;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 43
    new-instance v0, Lcom/qti/geofence/GeofenceData$DwellTypes;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/geofence/GeofenceData$DwellTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$DwellTypes;->UNKNOWN:Lcom/qti/geofence/GeofenceData$DwellTypes;

    new-instance v0, Lcom/qti/geofence/GeofenceData$DwellTypes;

    const-string v1, "DWELL_TYPE_INSIDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/geofence/GeofenceData$DwellTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$DwellTypes;->DWELL_TYPE_INSIDE:Lcom/qti/geofence/GeofenceData$DwellTypes;

    new-instance v0, Lcom/qti/geofence/GeofenceData$DwellTypes;

    const-string v1, "DWELL_TYPE_OUTSIDE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/geofence/GeofenceData$DwellTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$DwellTypes;->DWELL_TYPE_OUTSIDE:Lcom/qti/geofence/GeofenceData$DwellTypes;

    .line 44
    new-instance v0, Lcom/qti/geofence/GeofenceData$DwellTypes;

    const-string v1, "DWELL_TYPE_INSIDE_OUTSIDE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/qti/geofence/GeofenceData$DwellTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$DwellTypes;->DWELL_TYPE_INSIDE_OUTSIDE:Lcom/qti/geofence/GeofenceData$DwellTypes;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qti/geofence/GeofenceData$DwellTypes;

    sget-object v1, Lcom/qti/geofence/GeofenceData$DwellTypes;->UNKNOWN:Lcom/qti/geofence/GeofenceData$DwellTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/geofence/GeofenceData$DwellTypes;->DWELL_TYPE_INSIDE:Lcom/qti/geofence/GeofenceData$DwellTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/geofence/GeofenceData$DwellTypes;->DWELL_TYPE_OUTSIDE:Lcom/qti/geofence/GeofenceData$DwellTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/geofence/GeofenceData$DwellTypes;->DWELL_TYPE_INSIDE_OUTSIDE:Lcom/qti/geofence/GeofenceData$DwellTypes;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qti/geofence/GeofenceData$DwellTypes;->$VALUES:[Lcom/qti/geofence/GeofenceData$DwellTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qti/geofence/GeofenceData$DwellTypes;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/geofence/GeofenceData$DwellTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 42
    const-class v0, Lcom/qti/geofence/GeofenceData$DwellTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/geofence/GeofenceData$DwellTypes;

    return-object v0
.end method

.method public static values()[Lcom/qti/geofence/GeofenceData$DwellTypes;
    .locals 1

    .line 42
    sget-object v0, Lcom/qti/geofence/GeofenceData$DwellTypes;->$VALUES:[Lcom/qti/geofence/GeofenceData$DwellTypes;

    invoke-virtual {v0}, [Lcom/qti/geofence/GeofenceData$DwellTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/geofence/GeofenceData$DwellTypes;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/qti/geofence/GeofenceData$DwellTypes;->mValue:I

    return v0
.end method
