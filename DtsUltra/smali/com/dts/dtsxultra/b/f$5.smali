.class final Lcom/dts/dtsxultra/b/f$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/f;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/f;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/f$5;->a:Lcom/dts/dtsxultra/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/g;->a()Lcom/dts/dtssdk/g;

    invoke-static {}, Lcom/dts/dtsxultra/b/f;->S()[F

    move-result-object v0

    invoke-static {v0}, Lcom/dts/dtssdk/g;->a([F)Lcom/dts/dtssdk/f/a;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f$5;->a:Lcom/dts/dtsxultra/b/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/f;->c(Lcom/dts/dtsxultra/b/f;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/b/f$5;->a:Lcom/dts/dtsxultra/b/f;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/f;->a(Lcom/dts/dtsxultra/b/f;)Landroid/support/v4/app/f;

    move-result-object v0

    const-string v1, "Listening profile updated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
