.class final Lcom/dts/dtsxultra/b/k$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/b/k;
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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/k$7;->a:Lcom/dts/dtsxultra/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/dts/dtsxultra/b/k$7;->a:Lcom/dts/dtsxultra/b/k;

    if-eq v0, p1, :cond_0

    const/4 v2, 0x2

    if-eq v2, p1, :cond_0

    const/4 v2, 0x3

    if-ne v2, p1, :cond_1

    :cond_0
    :goto_0
    invoke-static {v1, v0}, Lcom/dts/dtsxultra/b/k;->a(Lcom/dts/dtsxultra/b/k;Z)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
