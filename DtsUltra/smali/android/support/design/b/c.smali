.class final Landroid/support/design/b/c;
.super Ljava/lang/Object;


# static fields
.field static final a:Z


# instance fields
.field final b:Landroid/support/design/b/a;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Landroid/graphics/PorterDuff$Mode;

.field j:Landroid/content/res/ColorStateList;

.field k:Landroid/content/res/ColorStateList;

.field l:Landroid/content/res/ColorStateList;

.field final m:Landroid/graphics/Paint;

.field final n:Landroid/graphics/Rect;

.field final o:Landroid/graphics/RectF;

.field p:Landroid/graphics/drawable/GradientDrawable;

.field q:Landroid/graphics/drawable/Drawable;

.field r:Landroid/graphics/drawable/GradientDrawable;

.field s:Landroid/graphics/drawable/Drawable;

.field t:Landroid/graphics/drawable/GradientDrawable;

.field u:Landroid/graphics/drawable/GradientDrawable;

.field v:Landroid/graphics/drawable/GradientDrawable;

.field w:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/design/b/c;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/design/b/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/b/c;->m:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/b/c;->n:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/b/c;->o:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/b/c;->w:Z

    iput-object p1, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 6

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Landroid/support/design/b/c;->c:I

    iget v3, p0, Landroid/support/design/b/c;->e:I

    iget v4, p0, Landroid/support/design/b/c;->d:I

    iget v5, p0, Landroid/support/design/b/c;->f:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method final a()V
    .locals 2

    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Landroid/support/design/b/c;->j:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Landroid/support/design/b/c;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method final b()Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v3, 0x0

    const/4 v5, -0x1

    const v4, 0x3727c5ac    # 1.0E-5f

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/b/c;->g:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroid/support/design/b/c;->a()V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/b/c;->g:I

    int-to-float v1, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Landroid/support/design/b/c;->h:I

    iget-object v2, p0, Landroid/support/design/b/c;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(ILandroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/design/b/c;->t:Landroid/graphics/drawable/GradientDrawable;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/support/design/b/c;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Landroid/support/design/b/c;->g:I

    int-to-float v2, v2

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v1, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v1, Landroid/support/design/b/b;

    iget-object v2, p0, Landroid/support/design/b/c;->l:Landroid/content/res/ColorStateList;

    invoke-static {v2}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/b/c;->v:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0, v3}, Landroid/support/design/b/b;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/InsetDrawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method final c()V
    .locals 2

    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/b/c;->u:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {p0}, Landroid/support/design/b/c;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/b/a;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Landroid/support/design/b/c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/b/c;->b:Landroid/support/design/b/a;

    invoke-virtual {v0}, Landroid/support/design/b/a;->invalidate()V

    goto :goto_0
.end method
