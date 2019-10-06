.class public final enum Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;
.super Ljava/lang/Enum;
.source "IZatSVHealthDebugReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatSVHealthDebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IzatSVHealthState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

.field public static final enum SV_HEALTH_BAD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

.field public static final enum SV_HEALTH_GOOD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

.field public static final enum SV_HEALTH_UNKNOWN:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    const-string v1, "SV_HEALTH_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_UNKNOWN:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    .line 38
    new-instance v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    const-string v1, "SV_HEALTH_GOOD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_GOOD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    .line 39
    new-instance v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    const-string v1, "SV_HEALTH_BAD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_BAD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    sget-object v1, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_UNKNOWN:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_GOOD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->SV_HEALTH_BAD:Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->$VALUES:[Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->mValue:I

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    return-object v0
.end method

.method public static values()[Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;
    .locals 1

    .line 36
    sget-object v0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->$VALUES:[Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    invoke-virtual {v0}, [Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/qti/debugreport/IZatSVHealthDebugReport$IzatSVHealthState;->mValue:I

    return v0
.end method
