.class public Lcom/dts/dtssdk/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/dts/dtssdk/a;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/a;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/c;)V

    return-void
.end method

.method public static a(Lcom/dts/dtssdk/util/BluetoothConnectionManager$a;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/BluetoothConnectionManager$a;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/dts/dtssdk/c/a",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/dts/dtssdk/a/h$h;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/dts/dtssdk/a/h$h;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/dts/dtssdk/util/UsbConnectionManager$a;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/UsbConnectionManager$a;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/dts/dtssdk/c/a",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/dts/dtssdk/a/h$m;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/dts/dtssdk/a/h$m;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
