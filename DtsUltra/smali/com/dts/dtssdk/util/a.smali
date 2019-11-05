.class public final enum Lcom/dts/dtssdk/util/a;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/dts/dtssdk/a/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dts/dtssdk/util/a;",
        ">;",
        "Lcom/dts/dtssdk/a/a/b;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dts/dtssdk/util/a;

.field public static final enum b:Lcom/dts/dtssdk/util/a;

.field public static final enum c:Lcom/dts/dtssdk/util/a;

.field public static final enum d:Lcom/dts/dtssdk/util/a;

.field public static final enum e:Lcom/dts/dtssdk/util/a;

.field private static final synthetic f:[Lcom/dts/dtssdk/util/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/dts/dtssdk/util/a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/util/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    new-instance v0, Lcom/dts/dtssdk/util/a;

    const-string v1, "INTERNAL_SPEAKERS"

    invoke-direct {v0, v1, v3}, Lcom/dts/dtssdk/util/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    new-instance v0, Lcom/dts/dtssdk/util/a;

    const-string v1, "LINE_OUT"

    invoke-direct {v0, v1, v4}, Lcom/dts/dtssdk/util/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    new-instance v0, Lcom/dts/dtssdk/util/a;

    const-string v1, "BLUETOOTH"

    invoke-direct {v0, v1, v5}, Lcom/dts/dtssdk/util/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    new-instance v0, Lcom/dts/dtssdk/util/a;

    const-string v1, "USB"

    invoke-direct {v0, v1, v6}, Lcom/dts/dtssdk/util/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dts/dtssdk/util/a;

    sget-object v1, Lcom/dts/dtssdk/util/a;->a:Lcom/dts/dtssdk/util/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dts/dtssdk/util/a;->b:Lcom/dts/dtssdk/util/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dts/dtssdk/util/a;->c:Lcom/dts/dtssdk/util/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dts/dtssdk/util/a;->f:[Lcom/dts/dtssdk/util/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dts/dtssdk/util/a;
    .locals 1

    const-class v0, Lcom/dts/dtssdk/util/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dts/dtssdk/util/a;

    return-object v0
.end method

.method public static values()[Lcom/dts/dtssdk/util/a;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/util/a;->f:[Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0}, [Lcom/dts/dtssdk/util/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dts/dtssdk/util/a;

    return-object v0
.end method
