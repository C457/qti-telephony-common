.class public final enum Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;
.super Ljava/lang/Enum;
.source "GeofenceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/geofence/GeofenceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeofenceTransitionTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

.field public static final enum ENTERED_AND_EXITED:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

.field public static final enum ENTERED_ONLY:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

.field public static final enum EXITED_ONLY:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

.field public static final enum UNKNOWN:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->UNKNOWN:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    new-instance v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    const-string v1, "ENTERED_ONLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->ENTERED_ONLY:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    new-instance v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    const-string v1, "EXITED_ONLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->EXITED_ONLY:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    new-instance v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    const-string v1, "ENTERED_AND_EXITED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->ENTERED_AND_EXITED:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    sget-object v1, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->UNKNOWN:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->ENTERED_ONLY:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->EXITED_ONLY:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->ENTERED_AND_EXITED:Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->$VALUES:[Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

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

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    return-object v0
.end method

.method public static values()[Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;
    .locals 1

    .line 26
    sget-object v0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->$VALUES:[Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    invoke-virtual {v0}, [Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->mValue:I

    return v0
.end method
