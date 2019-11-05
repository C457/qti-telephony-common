.class public final Lcom/dts/dtssdk/b/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:[I

.field c:Z

.field final synthetic d:Lcom/dts/dtssdk/b/c;


# direct methods
.method constructor <init>(Lcom/dts/dtssdk/b/c;)V
    .locals 1

    iput-object p1, p0, Lcom/dts/dtssdk/b/c$a;->d:Lcom/dts/dtssdk/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dts/dtssdk/b/c$a;->a:Landroid/os/Handler;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dts/dtssdk/b/c$a;->b:[I

    return-void

    :array_0
    .array-data 4
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
        -0x64
    .end array-data
.end method


# virtual methods
.method public final a(II)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtssdk/b/c$a;->b:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/b/c$a;->b:[I

    aput p2, v0, p1

    iget-boolean v0, p0, Lcom/dts/dtssdk/b/c$a;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dts/dtssdk/b/c$a;->c:Z

    iget-object v0, p0, Lcom/dts/dtssdk/b/c$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/dts/dtssdk/b/c$a$1;

    invoke-direct {v1, p0}, Lcom/dts/dtssdk/b/c$a$1;-><init>(Lcom/dts/dtssdk/b/c$a;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/dts/dtssdk/b/c$a;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dts/dtssdk/b/c$a;->a:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/dts/dtssdk/b/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creating handler for EqualizerModerator in AnalyticsManager failed."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dts/dtssdk/b/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "This may be due to GEQ APIs being called in a non-UI thread."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
