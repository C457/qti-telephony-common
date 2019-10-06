.class public final enum Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;
.super Ljava/lang/Enum;
.source "IZatXoStateDebugReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatXoStateDebugReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IZatXoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum COARSE:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum DEFAULT:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum EXACT:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum FAC1:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum FAILED:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum FINE:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum FT1:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum FT2:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum IFC:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum INTERP:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum NOT_CAL:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum OLD_RGS:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum RGS:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum RGS_RECENT:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum VCO_LAST:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

.field public static final enum WIDE_BINS:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 110
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FAILED:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 111
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "NOT_CAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->NOT_CAL:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 112
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "FAC1"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FAC1:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 113
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "DEFAULT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->DEFAULT:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 114
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "WIDE_BINS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->WIDE_BINS:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 115
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "COARSE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->COARSE:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 116
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "IFC"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->IFC:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 117
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "FINE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FINE:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 118
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "FT1"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FT1:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 119
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "OLD_RGS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->OLD_RGS:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 120
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "INTERP"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->INTERP:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 121
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "FT2"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FT2:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 122
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "EXACT"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->EXACT:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 123
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "RGS"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->RGS:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 124
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "RGS_RECENT"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->RGS_RECENT:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 125
    new-instance v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const-string v1, "VCO_LAST"

    const/16 v15, 0xf

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->VCO_LAST:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    .line 109
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FAILED:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->NOT_CAL:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FAC1:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->DEFAULT:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->WIDE_BINS:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->COARSE:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->IFC:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FINE:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FT1:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->OLD_RGS:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->INTERP:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->FT2:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    aput-object v1, v0, v13

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->EXACT:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->RGS:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->RGS_RECENT:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->VCO_LAST:Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->$VALUES:[Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

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

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->mValue:I

    .line 131
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 109
    const-class v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    return-object v0
.end method

.method public static values()[Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;
    .locals 1

    .line 109
    sget-object v0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->$VALUES:[Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    invoke-virtual {v0}, [Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/qti/debugreport/IZatXoStateDebugReport$IZatXoState;->mValue:I

    return v0
.end method
