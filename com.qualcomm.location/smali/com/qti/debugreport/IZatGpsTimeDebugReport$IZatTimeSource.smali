.class public final enum Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;
.super Ljava/lang/Enum;
.source "IZatGpsTimeDebugReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatGpsTimeDebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IZatTimeSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_BDS_SOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_EXTERNAL_INPUT:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_GAL_TOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_GLO_TOD_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_GSM_SLEEP_TIME_TAGGING:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_INVALID:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_NAV_SOLUTION:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_NETWORK_TIME_TAGGING:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_NETWORK_TIME_TRANSFER:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_QZSS_TOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_SLEEP_CLOCK:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_SLEEP_CLOCK_TIME_TRANSFER:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_SOLVE_FOR_TIME:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_TIME_ALIGNMENT:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_TIME_CONVERSION:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_TOW_AND_WEEK_CONFIRMED:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_TOW_CONFIRMED:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_TOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_UNKNOWN:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

.field public static final enum TIME_SOURCE_ESTIMATE_WCDMA_SLEEP_TIME_TAGGING:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 38
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_INVALID:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 39
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_NETWORK_TIME_TRANSFER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_NETWORK_TIME_TRANSFER:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 40
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_NETWORK_TIME_TAGGING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_NETWORK_TIME_TAGGING:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 41
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_EXTERNAL_INPUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_EXTERNAL_INPUT:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 42
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_TOW_DECODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_TOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 43
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_TOW_CONFIRMED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_TOW_CONFIRMED:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 44
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_TOW_AND_WEEK_CONFIRMED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_TOW_AND_WEEK_CONFIRMED:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 45
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_TIME_ALIGNMENT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_TIME_ALIGNMENT:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 46
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_NAV_SOLUTION"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_NAV_SOLUTION:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 47
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_SOLVE_FOR_TIME"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_SOLVE_FOR_TIME:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 48
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_GLO_TOD_DECODE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_GLO_TOD_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 49
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_TIME_CONVERSION"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_TIME_CONVERSION:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 50
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_SLEEP_CLOCK"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_SLEEP_CLOCK:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 51
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_SLEEP_CLOCK_TIME_TRANSFER"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_SLEEP_CLOCK_TIME_TRANSFER:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 52
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_UNKNOWN"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_UNKNOWN:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 53
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_WCDMA_SLEEP_TIME_TAGGING"

    const/16 v15, 0xf

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_WCDMA_SLEEP_TIME_TAGGING:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 54
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_GSM_SLEEP_TIME_TAGGING"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_GSM_SLEEP_TIME_TAGGING:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 55
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_GAL_TOW_DECODE"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_GAL_TOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 56
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_BDS_SOW_DECODE"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_BDS_SOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 57
    new-instance v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const-string v1, "TIME_SOURCE_ESTIMATE_QZSS_TOW_DECODE"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v1, v14, v15}, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_QZSS_TOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    .line 37
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_INVALID:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_NETWORK_TIME_TRANSFER:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_NETWORK_TIME_TAGGING:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_EXTERNAL_INPUT:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_TOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_TOW_CONFIRMED:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_TOW_AND_WEEK_CONFIRMED:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v8

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_TIME_ALIGNMENT:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v9

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_NAV_SOLUTION:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v10

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_SOLVE_FOR_TIME:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v11

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_GLO_TOD_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v12

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_TIME_CONVERSION:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    aput-object v1, v0, v13

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_SLEEP_CLOCK:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_SLEEP_CLOCK_TIME_TRANSFER:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_UNKNOWN:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_WCDMA_SLEEP_TIME_TAGGING:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_GSM_SLEEP_TIME_TAGGING:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_GAL_TOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_BDS_SOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->TIME_SOURCE_ESTIMATE_QZSS_TOW_DECODE:Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->$VALUES:[Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

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

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->mValue:I

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    return-object v0
.end method

.method public static values()[Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;
    .locals 1

    .line 37
    sget-object v0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->$VALUES:[Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    invoke-virtual {v0}, [Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/qti/debugreport/IZatGpsTimeDebugReport$IZatTimeSource;->mValue:I

    return v0
.end method
