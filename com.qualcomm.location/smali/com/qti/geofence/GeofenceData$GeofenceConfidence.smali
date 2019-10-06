.class public final enum Lcom/qti/geofence/GeofenceData$GeofenceConfidence;
.super Ljava/lang/Enum;
.source "GeofenceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/geofence/GeofenceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeofenceConfidence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/geofence/GeofenceData$GeofenceConfidence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

.field public static final enum HIGH:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

.field public static final enum LOW:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

.field public static final enum MEDIUM:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    const-string v1, "LOW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->LOW:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    new-instance v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    const-string v1, "MEDIUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->MEDIUM:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    new-instance v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    const-string v1, "HIGH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->HIGH:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    .line 34
    new-array v0, v5, [Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    sget-object v1, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->LOW:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->MEDIUM:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->HIGH:Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->$VALUES:[Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/geofence/GeofenceData$GeofenceConfidence;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    return-object v0
.end method

.method public static values()[Lcom/qti/geofence/GeofenceData$GeofenceConfidence;
    .locals 1

    .line 34
    sget-object v0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->$VALUES:[Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    invoke-virtual {v0}, [Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->mValue:I

    return v0
.end method
