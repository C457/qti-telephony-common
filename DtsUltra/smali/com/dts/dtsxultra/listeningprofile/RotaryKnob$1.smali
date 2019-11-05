.class final Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FFLjava/lang/Boolean;)V
    .locals 5

    const/4 v4, 0x1

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->e(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->h(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v3}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->h(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v0, v1, v4

    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget-object v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->i(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x15e

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->b(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->f(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->g(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 5

    const/4 v4, 0x1

    sget-object v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->a(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->c(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v3}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->c(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v0, v1, v4

    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget-object v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->d(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x12c

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v1, v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->a(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->b(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method
