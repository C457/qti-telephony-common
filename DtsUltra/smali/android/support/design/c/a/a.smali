.class public Landroid/support/design/c/a/a;
.super Landroid/support/v7/widget/ac;

# interfaces
.implements Landroid/support/design/c/d;


# instance fields
.field private final d:Landroid/support/design/c/c;


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    invoke-virtual {v0}, Landroid/support/design/c/c;->a()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/ac;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    invoke-virtual {v0}, Landroid/support/design/c/c;->b()V

    return-void
.end method

.method public final c()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/ac;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    invoke-virtual {v0, p1}, Landroid/support/design/c/c;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/ac;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    iget-object v0, v0, Landroid/support/design/c/c;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCircularRevealScrimColor()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    iget-object v0, v0, Landroid/support/design/c/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRevealInfo()Landroid/support/design/c/d$d;
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    invoke-virtual {v0}, Landroid/support/design/c/c;->c()Landroid/support/design/c/d$d;

    move-result-object v0

    return-object v0
.end method

.method public isOpaque()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    invoke-virtual {v0}, Landroid/support/design/c/c;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/v7/widget/ac;->isOpaque()Z

    move-result v0

    goto :goto_0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    invoke-virtual {v0, p1}, Landroid/support/design/c/c;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    invoke-virtual {v0, p1}, Landroid/support/design/c/c;->a(I)V

    return-void
.end method

.method public setRevealInfo(Landroid/support/design/c/d$d;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/c/a/a;->d:Landroid/support/design/c/c;

    invoke-virtual {v0, p1}, Landroid/support/design/c/c;->a(Landroid/support/design/c/d$d;)V

    return-void
.end method
