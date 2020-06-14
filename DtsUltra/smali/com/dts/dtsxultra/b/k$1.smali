.class final Lcom/dts/dtsxultra/b/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/k;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/k;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/k$1;->a:Lcom/dts/dtsxultra/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    const-string v1, "Next button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$1;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->a(Lcom/dts/dtsxultra/b/k;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$1;->a:Lcom/dts/dtsxultra/b/k;

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k$1;->a:Lcom/dts/dtsxultra/b/k;

    invoke-virtual {v1}, Lcom/dts/dtsxultra/b/k;->R()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dts/dtsxultra/b/k;->d(I)V

    return-void
.end method
