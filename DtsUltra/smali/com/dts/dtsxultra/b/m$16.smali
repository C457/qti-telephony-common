.class final Lcom/dts/dtsxultra/b/m$16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/b/m;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/b/m;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/b/m$16;->a:Lcom/dts/dtsxultra/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    invoke-static {}, Lcom/dts/dtsxultra/b/m;->R()Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/b/m$16;->a:Lcom/dts/dtsxultra/b/m;

    invoke-static {v0, p2}, Lcom/dts/dtsxultra/b/m;->a(Lcom/dts/dtsxultra/b/m;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dts/dtsxultra/b/m;->R()Ljava/lang/String;

    goto :goto_0
.end method
