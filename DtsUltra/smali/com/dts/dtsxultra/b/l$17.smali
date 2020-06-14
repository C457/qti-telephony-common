.class final Lcom/dts/dtsxultra/b/l$17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/l;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/l;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l$17;->a:Lcom/dts/dtsxultra/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$17;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtsxultra/b/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$17;->a:Lcom/dts/dtsxultra/b/l;

    new-instance v1, Lcom/dts/dtsxultra/b/f;

    invoke-direct {v1}, Lcom/dts/dtsxultra/b/f;-><init>()V

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtsxultra/b/l;Landroid/support/v4/app/e;)V

    :cond_0
    return-void
.end method
