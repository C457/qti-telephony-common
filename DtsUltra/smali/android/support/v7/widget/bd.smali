.class final Landroid/support/v7/widget/bd;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Z

.field h:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/widget/bd;->a:I

    iput v0, p0, Landroid/support/v7/widget/bd;->b:I

    iput v1, p0, Landroid/support/v7/widget/bd;->c:I

    iput v1, p0, Landroid/support/v7/widget/bd;->d:I

    iput v0, p0, Landroid/support/v7/widget/bd;->e:I

    iput v0, p0, Landroid/support/v7/widget/bd;->f:I

    iput-boolean v0, p0, Landroid/support/v7/widget/bd;->g:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/bd;->h:Z

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    const/high16 v1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/bd;->c:I

    iput p2, p0, Landroid/support/v7/widget/bd;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/bd;->h:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/bd;->g:Z

    if-eqz v0, :cond_2

    if-eq p2, v1, :cond_0

    iput p2, p0, Landroid/support/v7/widget/bd;->a:I

    :cond_0
    if-eq p1, v1, :cond_1

    iput p1, p0, Landroid/support/v7/widget/bd;->b:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq p1, v1, :cond_3

    iput p1, p0, Landroid/support/v7/widget/bd;->a:I

    :cond_3
    if-eq p2, v1, :cond_1

    iput p2, p0, Landroid/support/v7/widget/bd;->b:I

    goto :goto_0
.end method
