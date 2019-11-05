.class Lcom/dts/dtssdk/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtssdk/b/b;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/a/a;->a()V

    invoke-static {}, Lcom/a/a/a;->b()V

    invoke-static {p1}, Lcom/a/a/a;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->f:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FSFJ6B46ZGN96PNR6K7Y"

    :goto_0
    invoke-static {p1, v0}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/dts/dtssdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->b:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "4NK66J5B775NCHSQ8Y87"

    goto :goto_0

    :cond_1
    const-string v0, "C6MJ5WRCG5WKKNPN45ZH"

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/a/a/a;->a(Ljava/lang/String;Ljava/util/Map;)I

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "3ZR2398J4F8K7SX36W7C"

    invoke-static {p1, v0}, Lcom/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/dts/dtssdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
