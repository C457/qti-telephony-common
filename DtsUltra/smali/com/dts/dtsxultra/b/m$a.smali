.class final Lcom/dts/dtsxultra/b/m$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/os/Handler;

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Z

.field g:Z

.field private final h:I


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, -0x64

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dts/dtsxultra/b/m$a;->a:Landroid/os/Handler;

    iput v1, p0, Lcom/dts/dtsxultra/b/m$a;->b:I

    iput v1, p0, Lcom/dts/dtsxultra/b/m$a;->c:I

    iput v1, p0, Lcom/dts/dtsxultra/b/m$a;->d:I

    iput-boolean v2, p0, Lcom/dts/dtsxultra/b/m$a;->e:Z

    iput-boolean v2, p0, Lcom/dts/dtsxultra/b/m$a;->f:Z

    iput-boolean v2, p0, Lcom/dts/dtsxultra/b/m$a;->g:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/dts/dtsxultra/b/m$a;->h:I

    return-void
.end method

.method static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Z)Z
    .locals 4

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {p0, p1, p2}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Z)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/b/m;->R()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting loudness leveling control failed with: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/dts/dtsxultra/b/m;->R()Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)V
    .locals 4

    iput p3, p0, Lcom/dts/dtsxultra/b/m$a;->b:I

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/m$a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/m$a;->e:Z

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/dts/dtsxultra/b/m$a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/dts/dtsxultra/b/m$a$1;-><init>(Lcom/dts/dtsxultra/b/m$a;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method final b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)V
    .locals 4

    iput p3, p0, Lcom/dts/dtsxultra/b/m$a;->d:I

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/m$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/m$a;->f:Z

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/dts/dtsxultra/b/m$a$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/dts/dtsxultra/b/m$a$2;-><init>(Lcom/dts/dtsxultra/b/m$a;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method final c(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)V
    .locals 4

    iput p3, p0, Lcom/dts/dtsxultra/b/m$a;->c:I

    iget-boolean v0, p0, Lcom/dts/dtsxultra/b/m$a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dts/dtsxultra/b/m$a;->g:Z

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$a;->a:Landroid/os/Handler;

    new-instance v1, Lcom/dts/dtsxultra/b/m$a$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/dts/dtsxultra/b/m$a$3;-><init>(Lcom/dts/dtsxultra/b/m$a;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
