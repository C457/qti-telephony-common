.class public final enum Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;
.super Ljava/lang/Enum;
.source "IZatFixStatusDebugReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatFixStatusDebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IzatFixStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

.field public static final enum FINAL_FIX_SUCCESSFUL:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

.field public static final enum HEPE_CHECK_FAIL:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

.field public static final enum TOO_FEW_SV:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

.field public static final enum VERY_LOW_RELAIBILITY_FIX:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;


# instance fields
.field private final mFixStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    const-string v1, "FINAL_FIX_SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->FINAL_FIX_SUCCESSFUL:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    new-instance v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    const-string v1, "TOO_FEW_SV"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->TOO_FEW_SV:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    new-instance v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    const-string v1, "HEPE_CHECK_FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->HEPE_CHECK_FAIL:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    new-instance v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    const-string v1, "VERY_LOW_RELAIBILITY_FIX"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->VERY_LOW_RELAIBILITY_FIX:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    sget-object v1, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->FINAL_FIX_SUCCESSFUL:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->TOO_FEW_SV:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->HEPE_CHECK_FAIL:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->VERY_LOW_RELAIBILITY_FIX:Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->$VALUES:[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->mFixStatus:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    return-object v0
.end method

.method public static values()[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;
    .locals 1

    .line 40
    sget-object v0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->$VALUES:[Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    invoke-virtual {v0}, [Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/qti/debugreport/IZatFixStatusDebugReport$IzatFixStatus;->mFixStatus:I

    return v0
.end method
