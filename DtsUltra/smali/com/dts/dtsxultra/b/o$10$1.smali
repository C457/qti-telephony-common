.class final Lcom/dts/dtsxultra/b/o$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtsxultra/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/o$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/o$10;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/o$10;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o$10$1;->a:Lcom/dts/dtsxultra/b/o$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/dts/dtsxultra/b/o;->R()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$10$1;->a:Lcom/dts/dtsxultra/b/o$10;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/o$10;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/o;->b(Lcom/dts/dtsxultra/b/o;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$10$1;->a:Lcom/dts/dtsxultra/b/o$10;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/o$10;->a:Lcom/dts/dtsxultra/b/o;

    new-instance v1, Lcom/dts/dtsxultra/b/o$a;

    iget-object v2, p0, Lcom/dts/dtsxultra/b/o$10$1;->a:Lcom/dts/dtsxultra/b/o$10;

    iget-object v2, v2, Lcom/dts/dtsxultra/b/o$10;->a:Lcom/dts/dtsxultra/b/o;

    invoke-direct {v1, v2, v3}, Lcom/dts/dtsxultra/b/o$a;-><init>(Lcom/dts/dtsxultra/b/o;B)V

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/o;->a(Lcom/dts/dtsxultra/b/o;Lcom/dts/dtsxultra/b/o$a;)Lcom/dts/dtsxultra/b/o$a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$10$1;->a:Lcom/dts/dtsxultra/b/o$10;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/o$10;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/o;->c(Lcom/dts/dtsxultra/b/o;)Lcom/dts/dtsxultra/b/o$a;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/o$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dts/dtsxultra/b/o;->R()Ljava/lang/String;

    goto :goto_0
.end method
