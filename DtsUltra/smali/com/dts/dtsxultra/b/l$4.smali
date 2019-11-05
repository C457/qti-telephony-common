.class final Lcom/dts/dtsxultra/b/l$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/l;->s()V
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->a(Lcom/dts/dtsxultra/b/l;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtsxultra/b/l;->R()Ljava/lang/String;

    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/b/l;->b(Lcom/dts/dtsxultra/b/l;Z)V

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/l$4;->a:Lcom/dts/dtsxultra/b/l;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/l;->d(Lcom/dts/dtsxultra/b/l;)Landroid/support/v4/app/f;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/util/AccessoryNotificationManager;->a(Landroid/content/Context;Z)V

    return-void
.end method
