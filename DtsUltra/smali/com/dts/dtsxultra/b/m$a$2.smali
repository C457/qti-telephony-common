.class final Lcom/dts/dtsxultra/b/m$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/m$a;->b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/util/a;

.field final synthetic b:Lcom/dts/dtssdk/a/j;

.field final synthetic c:Lcom/dts/dtsxultra/b/m$a;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/m$a;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m$a$2;->c:Lcom/dts/dtsxultra/b/m$a;

    iput-object p2, p0, Lcom/dts/dtsxultra/b/m$a$2;->a:Lcom/dts/dtssdk/util/a;

    iput-object p3, p0, Lcom/dts/dtsxultra/b/m$a$2;->b:Lcom/dts/dtssdk/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$a$2;->c:Lcom/dts/dtsxultra/b/m$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dts/dtsxultra/b/m$a;->f:Z

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$a$2;->a:Lcom/dts/dtssdk/util/a;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/m$a$2;->b:Lcom/dts/dtssdk/a/j;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/m$a$2;->c:Lcom/dts/dtsxultra/b/m$a;

    iget v2, v2, Lcom/dts/dtsxultra/b/m$a;->d:I

    invoke-static {v0, v1, v2}, Lcom/dts/dtssdk/g;->c(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/b/m;->R()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting speaker bass level failed with code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
