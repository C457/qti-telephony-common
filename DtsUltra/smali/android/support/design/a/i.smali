.class public final Landroid/support/design/a/i;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J

.field c:I

.field d:I

.field private e:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/design/a/i;->a:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/support/design/a/i;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/a/i;->e:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/a/i;->c:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/a/i;->d:I

    iput-wide p1, p0, Landroid/support/design/a/i;->a:J

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Landroid/support/design/a/i;->b:J

    return-void
.end method

.method public constructor <init>(JJLandroid/animation/TimeInterpolator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/design/a/i;->a:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/support/design/a/i;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/a/i;->e:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/a/i;->c:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/design/a/i;->d:I

    iput-wide p1, p0, Landroid/support/design/a/i;->a:J

    iput-wide p3, p0, Landroid/support/design/a/i;->b:J

    iput-object p5, p0, Landroid/support/design/a/i;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public final a()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/support/design/a/i;->e:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/a/i;->e:Landroid/animation/TimeInterpolator;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/support/design/a/a;->b:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method public final a(Landroid/animation/Animator;)V
    .locals 2

    iget-wide v0, p0, Landroid/support/design/a/i;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-wide v0, p0, Landroid/support/design/a/i;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/support/design/a/i;->a()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    instance-of v0, p1, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    iget v1, p0, Landroid/support/design/a/i;->c:I

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    check-cast p1, Landroid/animation/ValueAnimator;

    iget v0, p0, Landroid/support/design/a/i;->d:I

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    check-cast p1, Landroid/support/design/a/i;

    iget-wide v2, p0, Landroid/support/design/a/i;->a:J

    iget-wide v4, p1, Landroid/support/design/a/i;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Landroid/support/design/a/i;->b:J

    iget-wide v4, p1, Landroid/support/design/a/i;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/design/a/i;->c:I

    iget v2, p1, Landroid/support/design/a/i;->c:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/support/design/a/i;->d:I

    iget v2, p1, Landroid/support/design/a/i;->d:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/design/a/i;->a()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/a/i;->a()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget-wide v0, p0, Landroid/support/design/a/i;->a:J

    iget-wide v2, p0, Landroid/support/design/a/i;->a:J

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Landroid/support/design/a/i;->b:J

    iget-wide v4, p0, Landroid/support/design/a/i;->b:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroid/support/design/a/i;->a()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/design/a/i;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/design/a/i;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/design/a/i;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/support/design/a/i;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " interpolator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/design/a/i;->a()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " repeatCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/design/a/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " repeatMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/design/a/i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
