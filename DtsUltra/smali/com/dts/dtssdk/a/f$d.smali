.class public final enum Lcom/dts/dtssdk/a/f$d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dts/dtssdk/a/f$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dts/dtssdk/a/f$d;

.field public static final enum b:Lcom/dts/dtssdk/a/f$d;

.field public static final enum c:Lcom/dts/dtssdk/a/f$d;

.field public static final enum d:Lcom/dts/dtssdk/a/f$d;

.field public static final enum e:Lcom/dts/dtssdk/a/f$d;

.field public static final enum f:Lcom/dts/dtssdk/a/f$d;

.field public static final enum g:Lcom/dts/dtssdk/a/f$d;

.field public static final enum h:Lcom/dts/dtssdk/a/f$d;

.field private static final synthetic i:[Lcom/dts/dtssdk/a/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/dts/dtssdk/a/f$d;

    const-string v1, "DEVICE_UUID"

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/a/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    new-instance v0, Lcom/dts/dtssdk/a/f$d;

    const-string v1, "DEVICE_NAME"

    invoke-direct {v0, v1, v4}, Lcom/dts/dtssdk/a/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    new-instance v0, Lcom/dts/dtssdk/a/f$d;

    const-string v1, "PRODUCT_UUID"

    invoke-direct {v0, v1, v5}, Lcom/dts/dtssdk/a/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/a/f$d;->c:Lcom/dts/dtssdk/a/f$d;

    new-instance v0, Lcom/dts/dtssdk/a/f$d;

    const-string v1, "PRODUCT_ID"

    invoke-direct {v0, v1, v6}, Lcom/dts/dtssdk/a/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/a/f$d;->d:Lcom/dts/dtssdk/a/f$d;

    new-instance v0, Lcom/dts/dtssdk/a/f$d;

    const-string v1, "TYPE_ENUM"

    invoke-direct {v0, v1, v7}, Lcom/dts/dtssdk/a/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/a/f$d;->e:Lcom/dts/dtssdk/a/f$d;

    new-instance v0, Lcom/dts/dtssdk/a/f$d;

    const-string v1, "TABLE_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/a/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    new-instance v0, Lcom/dts/dtssdk/a/f$d;

    const-string v1, "HAS_FEATURED_UUIDS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/a/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/a/f$d;->g:Lcom/dts/dtssdk/a/f$d;

    new-instance v0, Lcom/dts/dtssdk/a/f$d;

    const-string v1, "HAS_MCROOM_UUIDS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/a/f$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/a/f$d;->h:Lcom/dts/dtssdk/a/f$d;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/dts/dtssdk/a/f$d;

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->a:Lcom/dts/dtssdk/a/f$d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->b:Lcom/dts/dtssdk/a/f$d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->c:Lcom/dts/dtssdk/a/f$d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->d:Lcom/dts/dtssdk/a/f$d;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dts/dtssdk/a/f$d;->e:Lcom/dts/dtssdk/a/f$d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->f:Lcom/dts/dtssdk/a/f$d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->g:Lcom/dts/dtssdk/a/f$d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dts/dtssdk/a/f$d;->h:Lcom/dts/dtssdk/a/f$d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dts/dtssdk/a/f$d;->i:[Lcom/dts/dtssdk/a/f$d;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dts/dtssdk/a/f$d;
    .locals 1

    const-class v0, Lcom/dts/dtssdk/a/f$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/a/f$d;

    return-object v0
.end method

.method public static values()[Lcom/dts/dtssdk/a/f$d;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/a/f$d;->i:[Lcom/dts/dtssdk/a/f$d;

    invoke-virtual {v0}, [Lcom/dts/dtssdk/a/f$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dts/dtssdk/a/f$d;

    return-object v0
.end method
