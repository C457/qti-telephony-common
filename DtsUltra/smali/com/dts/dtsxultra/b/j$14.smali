.class final Lcom/dts/dtsxultra/b/j$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/j;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/j;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j$14;->a:Lcom/dts/dtsxultra/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$14;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->a(Lcom/dts/dtsxultra/b/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$14;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->f(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/a/f;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$14;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->f(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OK"

    :goto_1
    iget-object v1, p0, Lcom/dts/dtsxultra/b/j$14;->a:Lcom/dts/dtsxultra/b/j;

    const-string v2, "DTS Offline DB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Datastore Status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/dts/dtsxultra/b/j$14;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v3}, Lcom/dts/dtsxultra/b/j;->f(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/a/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dts/dtssdk/a/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "ERROR FOUND"

    goto :goto_1
.end method
