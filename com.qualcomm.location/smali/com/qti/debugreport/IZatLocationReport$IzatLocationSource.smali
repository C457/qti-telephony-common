.class public final enum Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;
.super Ljava/lang/Enum;
.source "IZatLocationReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/debugreport/IZatLocationReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IzatLocationSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

.field public static final enum POSITION_SOURCE_CPI:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

.field public static final enum POSITION_SOURCE_REFERENCE_LOCATION:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

.field public static final enum POSITION_SOURCE_TLE:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

.field public static final enum POSITION_SOURCE_UNKNOWN:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    const-string v1, "POSITION_SOURCE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->POSITION_SOURCE_UNKNOWN:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    .line 36
    new-instance v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    const-string v1, "POSITION_SOURCE_CPI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->POSITION_SOURCE_CPI:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    .line 37
    new-instance v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    const-string v1, "POSITION_SOURCE_REFERENCE_LOCATION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->POSITION_SOURCE_REFERENCE_LOCATION:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    .line 38
    new-instance v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    const-string v1, "POSITION_SOURCE_TLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->POSITION_SOURCE_TLE:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    sget-object v1, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->POSITION_SOURCE_UNKNOWN:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->POSITION_SOURCE_CPI:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->POSITION_SOURCE_REFERENCE_LOCATION:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->POSITION_SOURCE_TLE:Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->$VALUES:[Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->mValue:I

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    return-object v0
.end method

.method public static values()[Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;
    .locals 1

    .line 34
    sget-object v0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->$VALUES:[Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    invoke-virtual {v0}, [Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/qti/debugreport/IZatLocationReport$IzatLocationSource;->mValue:I

    return v0
.end method
