.class final Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;


# direct methods
.method constructor <init>(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;

    iget-object v0, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->k(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;

    iget-object v0, v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->k(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;->S()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mAnimationEndCallBack"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2$1;->a:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;

    iget-object v1, v1, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v1}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->k(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
