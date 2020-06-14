.class final Lcom/dts/dtsxultra/b/k$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb$a;


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

    iput-object p1, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FFLjava/lang/Boolean;)V
    .locals 4

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "valueChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->e(Lcom/dts/dtsxultra/b/k;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->f(Lcom/dts/dtsxultra/b/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->g(Lcom/dts/dtsxultra/b/k;)Lcom/dts/dtssdk/e/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->g(Lcom/dts/dtsxultra/b/k;)Lcom/dts/dtssdk/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/e/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->h(Lcom/dts/dtsxultra/b/k;)Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->getRotaryKnobThumbView()Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnobThumb;->getValue()F

    move-result v0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/k;->g(Lcom/dts/dtsxultra/b/k;)Lcom/dts/dtssdk/e/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/dts/dtssdk/e/b;->a(F)V

    :cond_1
    iget-object v0, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v0}, Lcom/dts/dtsxultra/b/k;->i(Lcom/dts/dtsxultra/b/k;)[F

    move-result-object v0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/k;->e(Lcom/dts/dtsxultra/b/k;)I

    move-result v2

    aput p2, v0, v2

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Rotation "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/k;->i(Lcom/dts/dtsxultra/b/k;)[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    invoke-static {}, Lcom/dts/dtsxultra/b/k;->T()[F

    move-result-object v0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/k;->e(Lcom/dts/dtsxultra/b/k;)I

    move-result v2

    aget v0, v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Value dB is less than minimum value of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/k;->T()[F

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v3}, Lcom/dts/dtsxultra/b/k;->e(Lcom/dts/dtsxultra/b/k;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Setting to min."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtsxultra/b/k;->T()[F

    move-result-object v0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/k;->e(Lcom/dts/dtsxultra/b/k;)I

    move-result v2

    aget v0, v0, v2

    :goto_1
    invoke-static {}, Lcom/dts/dtsxultra/b/k;->V()[F

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v3}, Lcom/dts/dtsxultra/b/k;->e(Lcom/dts/dtsxultra/b/k;)I

    move-result v3

    aget v2, v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Value dB is greater than maximum value of "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/dts/dtsxultra/b/k;->V()[F

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v3}, Lcom/dts/dtsxultra/b/k;->e(Lcom/dts/dtsxultra/b/k;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Setting to max."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/dts/dtsxultra/b/k;->V()[F

    move-result-object v0

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/k;->e(Lcom/dts/dtsxultra/b/k;)I

    move-result v2

    aget v0, v0, v2

    :cond_2
    iget-object v2, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/k;->j(Lcom/dts/dtsxultra/b/k;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v3}, Lcom/dts/dtsxultra/b/k;->e(Lcom/dts/dtsxultra/b/k;)I

    move-result v3

    aput v0, v2, v3

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "valueChanged mProfileThresholdValues "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dts/dtsxultra/b/k$8;->a:Lcom/dts/dtsxultra/b/k;

    invoke-static {v2}, Lcom/dts/dtsxultra/b/k;->j(Lcom/dts/dtsxultra/b/k;)[F

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 2

    sget-object v0, Lcom/dts/dtsxultra/b/k;->X:Ljava/lang/String;

    const-string v1, "startedTracking"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
