.class final Lcom/dts/dtsxultra/b/j$11;
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/j$11;->a:Lcom/dts/dtsxultra/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$11;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/j;->b(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/j$11;->a:Lcom/dts/dtsxultra/b/j;

    const-string v1, "DTS License Exists"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Returned code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dts/dtsxultra/b/j$11;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v3}, Lcom/dts/dtsxultra/b/j;->b(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v3

    iget-object v3, v3, Lcom/dts/dtssdk/f/a;->a:Lcom/dts/dtssdk/f/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nLicense code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/j$11;->a:Lcom/dts/dtsxultra/b/j;

    invoke-static {v3}, Lcom/dts/dtsxultra/b/j;->b(Lcom/dts/dtsxultra/b/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v3

    iget-object v3, v3, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dts/dtsxultra/b/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
