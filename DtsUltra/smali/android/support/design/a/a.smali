.class public final Landroid/support/design/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/animation/TimeInterpolator;

.field public static final b:Landroid/animation/TimeInterpolator;

.field public static final c:Landroid/animation/TimeInterpolator;

.field public static final d:Landroid/animation/TimeInterpolator;

.field public static final e:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/design/a/a;->a:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v4/h/b/b;

    invoke-direct {v0}, Landroid/support/v4/h/b/b;-><init>()V

    sput-object v0, Landroid/support/design/a/a;->b:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v4/h/b/a;

    invoke-direct {v0}, Landroid/support/v4/h/b/a;-><init>()V

    sput-object v0, Landroid/support/design/a/a;->c:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/support/v4/h/b/c;

    invoke-direct {v0}, Landroid/support/v4/h/b/c;-><init>()V

    sput-object v0, Landroid/support/design/a/a;->d:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/design/a/a;->e:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static a(FF)F
    .locals 1

    const/4 v0, 0x0

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static a(IIF)I
    .locals 1

    sub-int v0, p1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method
