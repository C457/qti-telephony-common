.class public Landroid/support/v7/c/a/a;
.super Landroid/support/v7/c/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/c/a/a$e;,
        Landroid/support/v7/c/a/a$b;,
        Landroid/support/v7/c/a/a$c;,
        Landroid/support/v7/c/a/a$d;,
        Landroid/support/v7/c/a/a$a;,
        Landroid/support/v7/c/a/a$f;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Landroid/support/v7/c/a/a$b;

.field private e:Landroid/support/v7/c/a/a$f;

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/support/v7/c/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/c/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/support/v7/c/a/a;-><init>(Landroid/support/v7/c/a/a$b;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v7/c/a/a$b;Landroid/content/res/Resources;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/c/a/d;-><init>(B)V

    iput v1, p0, Landroid/support/v7/c/a/a;->f:I

    iput v1, p0, Landroid/support/v7/c/a/a;->g:I

    new-instance v0, Landroid/support/v7/c/a/a$b;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v7/c/a/a$b;-><init>(Landroid/support/v7/c/a/a$b;Landroid/support/v7/c/a/a;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/a;->a(Landroid/support/v7/c/a/b$b;)V

    invoke-virtual {p0}, Landroid/support/v7/c/a/a;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/a;->onStateChange([I)Z

    invoke-virtual {p0}, Landroid/support/v7/c/a/a;->jumpToCurrentState()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/v7/c/a/a;
    .locals 6

    const/4 v3, 0x1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated-selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid animated-selector tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/support/v7/c/a/a;

    invoke-direct {v0}, Landroid/support/v7/c/a/a;-><init>()V

    sget-object v1, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableCompat:[I

    invoke-static {p1, p4, p3, v1}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableCompat_android_visible:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/c/a/a;->setVisible(ZZ)Z

    iget-object v2, v0, Landroid/support/v7/c/a/a;->d:Landroid/support/v7/c/a/a$b;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    iget v3, v2, Landroid/support/v7/c/a/a$b;->f:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/c/a/a$b;->f:I

    :cond_1
    sget v3, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v4, v2, Landroid/support/v7/c/a/a$b;->k:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/c/a/b$b;->k:Z

    sget v3, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v4, v2, Landroid/support/v7/c/a/a$b;->n:Z

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v7/c/a/b$b;->n:Z

    sget v3, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v4, v2, Landroid/support/v7/c/a/a$b;->C:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/support/v7/c/a/b$b;->C:I

    sget v3, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v4, v2, Landroid/support/v7/c/a/a$b;->D:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/support/v7/c/a/b$b;->D:I

    sget v3, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v2, v2, Landroid/support/v7/c/a/a$b;->z:Z

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/c/a/a;->setDither(Z)V

    iget-object v2, v0, Landroid/support/v7/c/a/b;->a:Landroid/support/v7/c/a/b$b;

    invoke-virtual {v2, p1}, Landroid/support/v7/c/a/b$b;->a(Landroid/content/res/Resources;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/c/a/a;->b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v0}, Landroid/support/v7/c/a/a;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/c/a/a;->onStateChange([I)Z

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ge v1, v5, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-gt v1, v5, :cond_0

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableItem:[I

    invoke-static {p2, p5, p4, v0}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/4 v0, 0x0

    sget v2, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableItem_android_drawable:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {p1, v2}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v2, 0x0

    invoke-interface {p4}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    new-array v8, v7, [I

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v7, :cond_4

    invoke-interface {p4, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    add-int/lit8 v3, v2, 0x1

    const/4 v9, 0x0

    invoke-interface {p4, v4, v9}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    if-eqz v9, :cond_3

    :goto_2
    aput v1, v8, v2

    move v1, v3

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_1

    :sswitch_0
    move v1, v2

    goto :goto_3

    :sswitch_1
    move v1, v2

    goto :goto_3

    :cond_3
    neg-int v1, v1

    goto :goto_2

    :cond_4
    invoke-static {v8, v2}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v1

    if-nez v0, :cond_7

    :cond_5
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vector"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2, p3, p4, p5}, Landroid/support/c/a/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/c/a/i;

    move-result-object v0

    :cond_7
    :goto_4
    if-nez v0, :cond_a

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_9

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :cond_9
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :cond_a
    iget-object v2, p0, Landroid/support/v7/c/a/a;->d:Landroid/support/v7/c/a/a$b;

    invoke-virtual {v2, v0}, Landroid/support/v7/c/a/d$a;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v3, v2, Landroid/support/v7/c/a/d$a;->L:[[I

    aput-object v1, v3, v0

    iget-object v1, v2, Landroid/support/v7/c/a/a$b;->b:Landroid/support/v4/g/m;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/g/m;->b(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Landroid/support/v7/c/a/a;->c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto/16 :goto_0

    :cond_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10100d0 -> :sswitch_1
        0x1010199 -> :sswitch_1
    .end sparse-switch
.end method

.method private c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .locals 7

    const/4 v6, -0x1

    sget-object v0, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableTransition:[I

    invoke-static {p2, p5, p4, v0}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v0, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableTransition_android_fromId:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    sget v0, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v0, 0x0

    sget v4, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {p1, v4}, Landroid/support/v7/b/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    sget v4, Landroid/support/v7/a/a$j;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v0, :cond_3

    :cond_1
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated-vector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/c/a/c;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/c/a/c;

    move-result-object v0

    :cond_3
    :goto_0
    if-nez v0, :cond_6

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-eq v2, v6, :cond_7

    if-ne v3, v6, :cond_8

    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v1, p0, Landroid/support/v7/c/a/a;->d:Landroid/support/v7/c/a/a$b;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/support/v7/c/a/a$b;->a(IILandroid/graphics/drawable/Drawable;Z)I

    move-result v0

    return v0
.end method

.method private c()Landroid/support/v7/c/a/a$b;
    .locals 3

    new-instance v0, Landroid/support/v7/c/a/a$b;

    iget-object v1, p0, Landroid/support/v7/c/a/a;->d:Landroid/support/v7/c/a/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v7/c/a/a$b;-><init>(Landroid/support/v7/c/a/a$b;Landroid/support/v7/c/a/a;Landroid/content/res/Resources;)V

    return-object v0
.end method


# virtual methods
.method final synthetic a()Landroid/support/v7/c/a/d$a;
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/c/a/a;->c()Landroid/support/v7/c/a/a$b;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/support/v7/c/a/b$b;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->a(Landroid/support/v7/c/a/b$b;)V

    instance-of v0, p1, Landroid/support/v7/c/a/a$b;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v7/c/a/a$b;

    iput-object p1, p0, Landroid/support/v7/c/a/a;->d:Landroid/support/v7/c/a/a$b;

    :cond_0
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method final synthetic b()Landroid/support/v7/c/a/b$b;
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/c/a/a;->c()Landroid/support/v7/c/a/a$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canApplyTheme()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public bridge synthetic getAlpha()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->getAlpha()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getChangingConfigurations()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->getHotspotBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic getIntrinsicHeight()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getIntrinsicWidth()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpacity()I
    .locals 1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->getOpacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOutline(Landroid/graphics/Outline;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic isAutoMirrored()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0}, Landroid/support/v7/c/a/d;->jumpToCurrentState()V

    iget-object v0, p0, Landroid/support/v7/c/a/a;->e:Landroid/support/v7/c/a/a$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/a;->e:Landroid/support/v7/c/a/a$f;

    invoke-virtual {v0}, Landroid/support/v7/c/a/a$f;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/c/a/a;->e:Landroid/support/v7/c/a/a$f;

    iget v0, p0, Landroid/support/v7/c/a/a;->f:I

    invoke-virtual {p0, v0}, Landroid/support/v7/c/a/a;->a(I)Z

    iput v1, p0, Landroid/support/v7/c/a/a;->f:I

    iput v1, p0, Landroid/support/v7/c/a/a;->g:I

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/c/a/a;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/v7/c/a/d;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/v7/c/a/a;->d:Landroid/support/v7/c/a/a$b;

    invoke-virtual {v0}, Landroid/support/v7/c/a/a$b;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/c/a/a;->h:Z

    :cond_0
    return-object p0
.end method

.method public bridge synthetic onLayoutDirectionChanged(I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->onLayoutDirectionChanged(I)Z

    move-result v0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 12

    iget-object v0, p0, Landroid/support/v7/c/a/a;->d:Landroid/support/v7/c/a/a$b;

    invoke-virtual {v0, p1}, Landroid/support/v7/c/a/a$b;->a([I)I

    move-result v6

    iget v0, p0, Landroid/support/v7/c/a/b;->b:I

    if-eq v6, v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/c/a/a;->e:Landroid/support/v7/c/a/a$f;

    if-eqz v1, :cond_5

    iget v0, p0, Landroid/support/v7/c/a/a;->f:I

    if-ne v6, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0, v6}, Landroid/support/v7/c/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/c/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    iget v0, p0, Landroid/support/v7/c/a/a;->g:I

    if-ne v6, v0, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/c/a/a$f;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/c/a/a$f;->d()V

    iget v0, p0, Landroid/support/v7/c/a/a;->g:I

    iput v0, p0, Landroid/support/v7/c/a/a;->f:I

    iput v6, p0, Landroid/support/v7/c/a/a;->g:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v7/c/a/a;->f:I

    invoke-virtual {v1}, Landroid/support/v7/c/a/a$f;->b()V

    move v2, v0

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/c/a/a;->e:Landroid/support/v7/c/a/a$f;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/c/a/a;->g:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/c/a/a;->f:I

    iget-object v4, p0, Landroid/support/v7/c/a/a;->d:Landroid/support/v7/c/a/a$b;

    invoke-virtual {v4, v2}, Landroid/support/v7/c/a/a$b;->a(I)I

    move-result v5

    invoke-virtual {v4, v6}, Landroid/support/v7/c/a/a$b;->a(I)I

    move-result v7

    if-eqz v7, :cond_4

    if-nez v5, :cond_6

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/support/v7/c/a/b;->b:I

    move v2, v0

    goto :goto_2

    :cond_6
    invoke-static {v5, v7}, Landroid/support/v7/c/a/a$b;->a(II)J

    move-result-wide v0

    iget-object v3, v4, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/g/f;

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v0, v1, v8}, Landroid/support/v4/g/f;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v1, v0

    if-gez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-static {v5, v7}, Landroid/support/v7/c/a/a$b;->a(II)J

    move-result-wide v8

    iget-object v0, v4, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/g/f;

    const-wide/16 v10, -0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v8, v9, v3}, Landroid/support/v4/g/f;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide v10, 0x200000000L

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    move v3, v0

    :goto_3
    invoke-virtual {p0, v1}, Landroid/support/v7/c/a/a;->a(I)Z

    invoke-virtual {p0}, Landroid/support/v7/c/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v0, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_a

    invoke-static {v5, v7}, Landroid/support/v7/c/a/a$b;->a(II)J

    move-result-wide v8

    iget-object v0, v4, Landroid/support/v7/c/a/a$b;->a:Landroid/support/v4/g/f;

    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v8, v9, v4}, Landroid/support/v4/g/f;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v8, 0x100000000L

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v4, v0

    :goto_4
    new-instance v5, Landroid/support/v7/c/a/a$d;

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v5, v0, v4, v3}, Landroid/support/v7/c/a/a$d;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    move-object v0, v5

    :goto_5
    invoke-virtual {v0}, Landroid/support/v7/c/a/a$f;->a()V

    iput-object v0, p0, Landroid/support/v7/c/a/a;->e:Landroid/support/v7/c/a/a$f;

    iput v2, p0, Landroid/support/v7/c/a/a;->g:I

    iput v6, p0, Landroid/support/v7/c/a/a;->f:I

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    move v3, v0

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    move v4, v0

    goto :goto_4

    :cond_a
    instance-of v0, v1, Landroid/support/c/a/c;

    if-eqz v0, :cond_b

    new-instance v0, Landroid/support/v7/c/a/a$c;

    check-cast v1, Landroid/support/c/a/c;

    invoke-direct {v0, v1}, Landroid/support/v7/c/a/a$c;-><init>(Landroid/support/c/a/c;)V

    goto :goto_5

    :cond_b
    instance-of v0, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v7/c/a/a$a;

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-direct {v0, v1}, Landroid/support/v7/c/a/a$a;-><init>(Landroid/graphics/drawable/Animatable;)V

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public bridge synthetic scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/c/a/d;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public bridge synthetic setAlpha(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->setAlpha(I)V

    return-void
.end method

.method public bridge synthetic setAutoMirrored(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->setAutoMirrored(Z)V

    return-void
.end method

.method public bridge synthetic setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public bridge synthetic setDither(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->setDither(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/c/a/d;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/c/a/d;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/c/a/d;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v7/c/a/d;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/c/a/a;->e:Landroid/support/v7/c/a/a$f;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Landroid/support/v7/c/a/a;->e:Landroid/support/v7/c/a/a$f;

    invoke-virtual {v1}, Landroid/support/v7/c/a/a$f;->a()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/c/a/a;->jumpToCurrentState()V

    goto :goto_0
.end method

.method public bridge synthetic unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/c/a/d;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
