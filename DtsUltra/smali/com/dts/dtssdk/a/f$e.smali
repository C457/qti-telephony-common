.class public final enum Lcom/dts/dtssdk/a/f$e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dts/dtssdk/a/f$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dts/dtssdk/a/f$e;

.field public static final enum b:Lcom/dts/dtssdk/a/f$e;

.field private static final synthetic c:[Lcom/dts/dtssdk/a/f$e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/dts/dtssdk/a/f$e;

    const-string v1, "PRODUCT_BRAND_CORRECTED"

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/a/f$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/a/f$e;->a:Lcom/dts/dtssdk/a/f$e;

    new-instance v0, Lcom/dts/dtssdk/a/f$e;

    const-string v1, "DATABASE_RESET"

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/a/f$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/a/f$e;->b:Lcom/dts/dtssdk/a/f$e;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dts/dtssdk/a/f$e;

    sget-object v1, Lcom/dts/dtssdk/a/f$e;->a:Lcom/dts/dtssdk/a/f$e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dts/dtssdk/a/f$e;->b:Lcom/dts/dtssdk/a/f$e;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dts/dtssdk/a/f$e;->c:[Lcom/dts/dtssdk/a/f$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dts/dtssdk/a/f$e;
    .locals 1

    const-class v0, Lcom/dts/dtssdk/a/f$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/f$e;

    return-object v0
.end method

.method public static values()[Lcom/dts/dtssdk/a/f$e;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/a/f$e;->c:[Lcom/dts/dtssdk/a/f$e;

    invoke-virtual {v0}, [Lcom/dts/dtssdk/a/f$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dts/dtssdk/a/f$e;

    return-object v0
.end method
