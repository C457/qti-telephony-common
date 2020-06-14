.class final Lcom/dts/dtsxultra/b/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/n;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/n$2;->a:Lcom/dts/dtsxultra/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n$2;->a:Lcom/dts/dtsxultra/b/n;

    iget-object v0, v0, Lcom/dts/dtsxultra/b/n;->ad:Lcom/dts/dtssdk/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/n$2;->a:Lcom/dts/dtsxultra/b/n;

    sget-object v1, Lcom/dts/dtssdk/a/n;->c:Lcom/dts/dtssdk/a/n;

    invoke-static {v0, v1}, Lcom/dts/dtsxultra/b/n;->a(Lcom/dts/dtsxultra/b/n;Lcom/dts/dtssdk/a/n;)V

    :cond_0
    return-void
.end method
