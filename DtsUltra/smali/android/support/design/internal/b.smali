.class public final Landroid/support/design/internal/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    sget v1, Landroid/support/design/a$b;->colorPrimary:I

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/internal/b;->a:[I

    new-array v0, v3, [I

    sget v1, Landroid/support/design/a$b;->colorSecondary:I

    aput v1, v0, v2

    sput-object v0, Landroid/support/design/internal/b;->b:[I

    return-void
.end method

.method public static varargs a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;
    .locals 8

    const/4 v0, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    sget-object v2, Landroid/support/design/a$i;->ThemeEnforcement:[I

    invoke-virtual {p0, p1, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Landroid/support/design/a$i;->ThemeEnforcement_enforceMaterialTheme:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_0

    sget-object v2, Landroid/support/design/internal/b;->b:[I

    const-string v3, "Theme.MaterialComponents"

    invoke-static {p0, v2, v3}, Landroid/support/design/internal/b;->a(Landroid/content/Context;[ILjava/lang/String;)V

    :cond_0
    invoke-static {p0}, Landroid/support/design/internal/b;->a(Landroid/content/Context;)V

    sget-object v2, Landroid/support/design/a$i;->ThemeEnforcement:[I

    invoke-virtual {p0, p1, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    sget v2, Landroid/support/design/a$i;->ThemeEnforcement_enforceTextAppearance:I

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    :cond_2
    array-length v2, p5

    if-nez v2, :cond_4

    sget v2, Landroid/support/design/a$i;->ThemeEnforcement_android_textAppearance:I

    invoke-virtual {v3, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eq v2, v7, :cond_3

    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    array-length v5, p5

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_6

    aget v6, p5, v2

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    if-ne v6, v7, :cond_5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move v1, v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Landroid/support/design/internal/b;->a:[I

    const-string v1, "Theme.AppCompat"

    invoke-static {p0, v0, v1}, Landroid/support/design/internal/b;->a(Landroid/content/Context;[ILjava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;[ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The style on this component requires your app theme to be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (or a descendant)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
