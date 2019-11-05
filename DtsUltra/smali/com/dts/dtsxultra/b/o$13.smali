.class final Lcom/dts/dtsxultra/b/o$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/o;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/o;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/o$13;->a:Lcom/dts/dtsxultra/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$13;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/o;->a(Lcom/dts/dtsxultra/b/o;)Landroid/support/v4/app/f;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/g;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$13;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/o;->a(Lcom/dts/dtsxultra/b/o;)Landroid/support/v4/app/f;

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtsxultra/util/f;->m(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/o$13;->a:Lcom/dts/dtsxultra/b/o;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/o;->a(Lcom/dts/dtsxultra/b/o;)Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "Reset all USB device association"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
