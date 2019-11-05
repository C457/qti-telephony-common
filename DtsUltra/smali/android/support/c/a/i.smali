.class public final Landroid/support/c/a/i;
.super Landroid/support/c/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/c/a/i$b;,
        Landroid/support/c/a/i$a;,
        Landroid/support/c/a/i$e;,
        Landroid/support/c/a/i$c;,
        Landroid/support/c/a/i$d;,
        Landroid/support/c/a/i$f;,
        Landroid/support/c/a/i$g;,
        Landroid/support/c/a/i$h;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field b:Landroid/support/c/a/i$g;

.field d:Z

.field private e:Landroid/graphics/PorterDuffColorFilter;

.field private f:Landroid/graphics/ColorFilter;

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/c/a/i;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/c/a/h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/c/a/i;->d:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/c/a/i;->i:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i;->j:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    new-instance v0, Landroid/support/c/a/i$g;

    invoke-direct {v0}, Landroid/support/c/a/i$g;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    return-void
.end method

.method constructor <init>(Landroid/support/c/a/i$g;)V
    .locals 2

    invoke-direct {p0}, Landroid/support/c/a/h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/c/a/i;->d:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/c/a/i;->i:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i;->j:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v0, p1, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/support/c/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/c/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v1, p0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/c/a/i;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/c/a/i;
    .locals 5

    const/4 v4, 0x2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/c/a/i;

    invoke-direct {v0}, Landroid/support/c/a/i;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/support/v4/a/a/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/support/c/a/i$h;

    iget-object v2, v0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/c/a/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v1, v0, Landroid/support/c/a/i;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_2
    if-eq v2, v4, :cond_3

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    const-string v1, "VectorDrawableCompat"

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {p0, v0, v1, p2}, Landroid/support/c/a/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/c/a/i;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "VectorDrawableCompat"

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/c/a/i;
    .locals 1

    new-instance v0, Landroid/support/c/a/i;

    invoke-direct {v0}, Landroid/support/c/a/i;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/c/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 14

    iget-object v4, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v5, v4, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    const/4 v3, 0x1

    new-instance v6, Ljava/util/ArrayDeque;

    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v2, v5, Landroid/support/c/a/i$f;->c:Landroid/support/c/a/i$c;

    invoke-virtual {v6, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    :goto_0
    const/4 v8, 0x1

    if-eq v2, v8, :cond_b

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ge v8, v7, :cond_0

    const/4 v8, 0x3

    if-eq v2, v8, :cond_b

    :cond_0
    const/4 v8, 0x2

    if-ne v2, v8, :cond_9

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/c/a/i$c;

    const-string v9, "path"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v3, Landroid/support/c/a/i$b;

    invoke-direct {v3}, Landroid/support/c/a/i$b;-><init>()V

    sget-object v8, Landroid/support/c/a/a;->c:[I

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {p1, v0, v1, v8}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v3, v8, v0, v1}, Landroid/support/c/a/i$b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v2, Landroid/support/c/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/support/c/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v5, Landroid/support/c/a/i$f;->k:Landroid/support/v4/g/a;

    invoke-virtual {v3}, Landroid/support/c/a/i$b;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v3}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x0

    iget v8, v4, Landroid/support/c/a/i$g;->a:I

    iget v3, v3, Landroid/support/c/a/i$b;->o:I

    or-int/2addr v3, v8

    iput v3, v4, Landroid/support/c/a/i$g;->a:I

    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v13, v3

    move v3, v2

    move v2, v13

    goto :goto_0

    :cond_2
    const-string v9, "clip-path"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v8, Landroid/support/c/a/i$a;

    invoke-direct {v8}, Landroid/support/c/a/i$a;-><init>()V

    const-string v9, "pathData"

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Landroid/support/v4/a/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Landroid/support/c/a/a;->d:[I

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {p1, v0, v1, v9}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/c/a/i$a;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    iget-object v2, v2, Landroid/support/c/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/support/c/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v5, Landroid/support/c/a/i$f;->k:Landroid/support/v4/g/a;

    invoke-virtual {v8}, Landroid/support/c/a/i$a;->getPathName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v2, v4, Landroid/support/c/a/i$g;->a:I

    iget v8, v8, Landroid/support/c/a/i$a;->o:I

    or-int/2addr v2, v8

    iput v2, v4, Landroid/support/c/a/i$g;->a:I

    move v2, v3

    goto :goto_1

    :cond_5
    const-string v9, "group"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Landroid/support/c/a/i$c;

    invoke-direct {v8}, Landroid/support/c/a/i$c;-><init>()V

    sget-object v9, Landroid/support/c/a/a;->b:[I

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {p1, v0, v1, v9}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    const/4 v10, 0x0

    iput-object v10, v8, Landroid/support/c/a/i$c;->l:[I

    const-string v10, "rotation"

    const/4 v11, 0x5

    iget v12, v8, Landroid/support/c/a/i$c;->c:F

    move-object/from16 v0, p2

    invoke-static {v9, v0, v10, v11, v12}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v8, Landroid/support/c/a/i$c;->c:F

    const/4 v10, 0x1

    iget v11, v8, Landroid/support/c/a/i$c;->d:F

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v8, Landroid/support/c/a/i$c;->d:F

    const/4 v10, 0x2

    iget v11, v8, Landroid/support/c/a/i$c;->e:F

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    iput v10, v8, Landroid/support/c/a/i$c;->e:F

    const-string v10, "scaleX"

    const/4 v11, 0x3

    iget v12, v8, Landroid/support/c/a/i$c;->f:F

    move-object/from16 v0, p2

    invoke-static {v9, v0, v10, v11, v12}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v8, Landroid/support/c/a/i$c;->f:F

    const-string v10, "scaleY"

    const/4 v11, 0x4

    iget v12, v8, Landroid/support/c/a/i$c;->g:F

    move-object/from16 v0, p2

    invoke-static {v9, v0, v10, v11, v12}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v8, Landroid/support/c/a/i$c;->g:F

    const-string v10, "translateX"

    const/4 v11, 0x6

    iget v12, v8, Landroid/support/c/a/i$c;->h:F

    move-object/from16 v0, p2

    invoke-static {v9, v0, v10, v11, v12}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v8, Landroid/support/c/a/i$c;->h:F

    const-string v10, "translateY"

    const/4 v11, 0x7

    iget v12, v8, Landroid/support/c/a/i$c;->i:F

    move-object/from16 v0, p2

    invoke-static {v9, v0, v10, v11, v12}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v10

    iput v10, v8, Landroid/support/c/a/i$c;->i:F

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    iput-object v10, v8, Landroid/support/c/a/i$c;->m:Ljava/lang/String;

    :cond_6
    invoke-virtual {v8}, Landroid/support/c/a/i$c;->a()V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v2, Landroid/support/c/a/i$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v8}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/support/c/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, v5, Landroid/support/c/a/i$f;->k:Landroid/support/v4/g/a;

    invoke-virtual {v8}, Landroid/support/c/a/i$c;->getGroupName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget v2, v4, Landroid/support/c/a/i$g;->a:I

    iget v8, v8, Landroid/support/c/a/i$c;->k:I

    or-int/2addr v2, v8

    iput v2, v4, Landroid/support/c/a/i$g;->a:I

    :cond_8
    move v2, v3

    goto/16 :goto_1

    :cond_9
    const/4 v8, 0x3

    if-ne v2, v8, :cond_a

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v8, "group"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_a
    move v2, v3

    goto/16 :goto_1

    :cond_b
    if-eqz v3, :cond_c

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "no path defined"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    return-void
.end method


# virtual methods
.method public final bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/c/a/h;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public final canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic clearColorFilter()V
    .locals 0

    invoke-super {p0}, Landroid/support/c/a/h;->clearColorFilter()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    const/16 v10, 0x800

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/c/a/i;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->f:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/c/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    iget-object v1, p0, Landroid/support/c/a/i;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Landroid/support/c/a/i;->j:Landroid/graphics/Matrix;

    iget-object v3, p0, Landroid/support/c/a/i;->i:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Landroid/support/c/a/i;->i:[F

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v1, p0, Landroid/support/c/a/i;->i:[F

    const/4 v6, 0x4

    aget v1, v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v6, p0, Landroid/support/c/a/i;->i:[F

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget-object v7, p0, Landroid/support/c/a/i;->i:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v9

    if-nez v6, :cond_2

    cmpl-float v6, v7, v9

    if-eqz v6, :cond_3

    :cond_2
    move v1, v2

    move v3, v2

    :cond_3
    iget-object v6, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v3, v6

    float-to-int v3, v3

    iget-object v6, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v1, v6

    float-to-int v1, v1

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lez v3, :cond_0

    if-lez v6, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget-object v1, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v8, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v1, v8}, Landroid/graphics/Canvas;->translate(FF)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v1, v8, :cond_a

    invoke-virtual {p0}, Landroid/support/c/a/i;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p0}, Landroid/support/v4/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-ne v1, v4, :cond_9

    move v1, v4

    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_4
    iget-object v1, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v1, v2, Landroid/support/c/a/i$g;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, v2, Landroid/support/c/a/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v3, v1, :cond_b

    iget-object v1, v2, Landroid/support/c/a/i$g;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v6, v1, :cond_b

    move v1, v4

    :goto_3
    if-nez v1, :cond_6

    :cond_5
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v6, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v2, Landroid/support/c/a/i$g;->f:Landroid/graphics/Bitmap;

    iput-boolean v4, v2, Landroid/support/c/a/i$g;->k:Z

    :cond_6
    iget-boolean v1, p0, Landroid/support/c/a/i;->d:Z

    if-nez v1, :cond_c

    iget-object v1, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    invoke-virtual {v1, v3, v6}, Landroid/support/c/a/i$g;->a(II)V

    :cond_7
    :goto_4
    iget-object v2, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v3, p0, Landroid/support/c/a/i;->k:Landroid/graphics/Rect;

    iget-object v1, v2, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    invoke-virtual {v1}, Landroid/support/c/a/i$f;->getRootAlpha()I

    move-result v1

    const/16 v6, 0xff

    if-ge v1, v6, :cond_e

    move v1, v4

    :goto_5
    if-nez v1, :cond_f

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_6
    iget-object v1, v2, Landroid/support/c/a/i$g;->f:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/support/c/a/i;->f:Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    :cond_9
    move v1, v5

    goto :goto_2

    :cond_a
    move v1, v5

    goto :goto_2

    :cond_b
    move v1, v5

    goto :goto_3

    :cond_c
    iget-object v1, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-boolean v2, v1, Landroid/support/c/a/i$g;->k:Z

    if-nez v2, :cond_d

    iget-object v2, v1, Landroid/support/c/a/i$g;->g:Landroid/content/res/ColorStateList;

    iget-object v8, v1, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-ne v2, v8, :cond_d

    iget-object v2, v1, Landroid/support/c/a/i$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v8, v1, Landroid/support/c/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v2, v8, :cond_d

    iget-boolean v2, v1, Landroid/support/c/a/i$g;->j:Z

    iget-boolean v8, v1, Landroid/support/c/a/i$g;->e:Z

    if-ne v2, v8, :cond_d

    iget v2, v1, Landroid/support/c/a/i$g;->i:I

    iget-object v1, v1, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    invoke-virtual {v1}, Landroid/support/c/a/i$f;->getRootAlpha()I

    move-result v1

    if-ne v2, v1, :cond_d

    move v1, v4

    :goto_7
    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    invoke-virtual {v1, v3, v6}, Landroid/support/c/a/i$g;->a(II)V

    iget-object v1, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v2, v1, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    iput-object v2, v1, Landroid/support/c/a/i$g;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v1, Landroid/support/c/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, v1, Landroid/support/c/a/i$g;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v2, v1, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    invoke-virtual {v2}, Landroid/support/c/a/i$f;->getRootAlpha()I

    move-result v2

    iput v2, v1, Landroid/support/c/a/i$g;->i:I

    iget-boolean v2, v1, Landroid/support/c/a/i$g;->e:Z

    iput-boolean v2, v1, Landroid/support/c/a/i$g;->j:Z

    iput-boolean v5, v1, Landroid/support/c/a/i$g;->k:Z

    goto :goto_4

    :cond_d
    move v1, v5

    goto :goto_7

    :cond_e
    move v1, v5

    goto :goto_5

    :cond_f
    iget-object v1, v2, Landroid/support/c/a/i$g;->l:Landroid/graphics/Paint;

    if-nez v1, :cond_10

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v2, Landroid/support/c/a/i$g;->l:Landroid/graphics/Paint;

    iget-object v1, v2, Landroid/support/c/a/i$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_10
    iget-object v1, v2, Landroid/support/c/a/i$g;->l:Landroid/graphics/Paint;

    iget-object v4, v2, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    invoke-virtual {v4}, Landroid/support/c/a/i$f;->getRootAlpha()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v2, Landroid/support/c/a/i$g;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, v2, Landroid/support/c/a/i$g;->l:Landroid/graphics/Paint;

    goto :goto_6
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v0, v0, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    invoke-virtual {v0}, Landroid/support/c/a/i$f;->getRootAlpha()I

    move-result v0

    goto :goto_0
.end method

.method public final getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/c/a/h;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    invoke-virtual {v1}, Landroid/support/c/a/i$g;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    invoke-super {p0}, Landroid/support/c/a/h;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/c/a/i$h;

    iget-object v1, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/c/a/i$h;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    invoke-virtual {p0}, Landroid/support/c/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/c/a/i$g;->a:I

    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    goto :goto_0
.end method

.method public final bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Landroid/support/c/a/h;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v0, v0, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    iget v0, v0, Landroid/support/c/a/i$f;->e:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v0, v0, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    iget v0, v0, Landroid/support/c/a/i$f;->d:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public final bridge synthetic getMinimumHeight()I
    .locals 1

    invoke-super {p0}, Landroid/support/c/a/h;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getMinimumWidth()I
    .locals 1

    invoke-super {p0}, Landroid/support/c/a/h;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public final bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/c/a/h;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getState()[I
    .locals 1

    invoke-super {p0}, Landroid/support/c/a/h;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    invoke-super {p0}, Landroid/support/c/a/h;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/c/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    new-instance v0, Landroid/support/c/a/i$f;

    invoke-direct {v0}, Landroid/support/c/a/i$f;-><init>()V

    iput-object v0, v1, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    sget-object v0, Landroid/support/c/a/a;->a:[I

    invoke-static {p1, p4, p3, v0}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-object v3, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v4, v3, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    const-string v0, "tintMode"

    const/4 v5, 0x6

    const/4 v6, -0x1

    invoke-static {v2, p2, v0, v5, v6}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    packed-switch v5, :pswitch_data_0

    :goto_1
    :pswitch_0
    iput-object v0, v3, Landroid/support/c/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, v3, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    :cond_1
    const-string v5, "autoMirrored"

    iget-boolean v0, v3, Landroid/support/c/a/i$g;->e:Z

    invoke-static {p2, v5}, Landroid/support/v4/a/a/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    iput-boolean v0, v3, Landroid/support/c/a/i$g;->e:Z

    const-string v0, "viewportWidth"

    const/4 v3, 0x7

    iget v5, v4, Landroid/support/c/a/i$f;->f:F

    invoke-static {v2, p2, v0, v3, v5}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v4, Landroid/support/c/a/i$f;->f:F

    const-string v0, "viewportHeight"

    const/16 v3, 0x8

    iget v5, v4, Landroid/support/c/a/i$f;->g:F

    invoke-static {v2, p2, v0, v3, v5}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v4, Landroid/support/c/a/i$f;->g:F

    iget v0, v4, Landroid/support/c/a/i$f;->f:F

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_3

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_2
    const/4 v5, 0x5

    invoke-virtual {v2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    goto :goto_2

    :cond_3
    iget v0, v4, Landroid/support/c/a/i$f;->g:F

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_4

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x3

    iget v3, v4, Landroid/support/c/a/i$f;->d:F

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v4, Landroid/support/c/a/i$f;->d:F

    const/4 v0, 0x2

    iget v3, v4, Landroid/support/c/a/i$f;->e:F

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v4, Landroid/support/c/a/i$f;->e:F

    iget v0, v4, Landroid/support/c/a/i$f;->d:F

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_5

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, v4, Landroid/support/c/a/i$f;->e:F

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_6

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "alpha"

    const/4 v3, 0x4

    invoke-virtual {v4}, Landroid/support/c/a/i$f;->getAlpha()F

    move-result v5

    invoke-static {v2, p2, v0, v3, v5}, Landroid/support/v4/a/a/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/support/c/a/i$f;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iput-object v0, v4, Landroid/support/c/a/i$f;->i:Ljava/lang/String;

    iget-object v3, v4, Landroid/support/c/a/i$f;->k:Landroid/support/v4/g/a;

    invoke-virtual {v3, v0, v4}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/support/c/a/i;->getChangingConfigurations()I

    move-result v0

    iput v0, v1, Landroid/support/c/a/i$g;->a:I

    iput-boolean v8, v1, Landroid/support/c/a/i$g;->k:Z

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/c/a/i;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v0, v1, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v1, v1, Landroid/support/c/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/c/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final invalidateSelf()V
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/support/c/a/h;->invalidateSelf()V

    goto :goto_0
.end method

.method public final isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-boolean v0, v0, Landroid/support/c/a/i$g;->e:Z

    goto :goto_0
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/c/a/h;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    invoke-virtual {v0}, Landroid/support/c/a/i$g;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v0, v0, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v0, v0, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic jumpToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/support/c/a/h;->jumpToCurrentState()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-boolean v0, p0, Landroid/support/c/a/i;->g:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/c/a/h;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Landroid/support/c/a/i$g;

    iget-object v1, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    invoke-direct {v0, v1}, Landroid/support/c/a/i$g;-><init>(Landroid/support/c/a/i$g;)V

    iput-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/c/a/i;->g:Z

    goto :goto_0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v3, v2, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/support/c/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_2

    iget-object v0, v2, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v3, v2, Landroid/support/c/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v3}, Landroid/support/c/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    move v0, v1

    :cond_2
    invoke-virtual {v2}, Landroid/support/c/a/i$g;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    iget-object v3, v3, Landroid/support/c/a/i$f;->c:Landroid/support/c/a/i$c;

    invoke-virtual {v3, p1}, Landroid/support/c/a/i$c;->a([I)Z

    move-result v3

    iget-boolean v4, v2, Landroid/support/c/a/i$g;->k:Z

    or-int/2addr v4, v3

    iput-boolean v4, v2, Landroid/support/c/a/i$g;->k:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    move v0, v1

    goto :goto_0
.end method

.method public final scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/c/a/h;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v0, v0, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    invoke-virtual {v0}, Landroid/support/c/a/i$f;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v0, v0, Landroid/support/c/a/i$g;->b:Landroid/support/c/a/i$f;

    invoke-virtual {v0, p1}, Landroid/support/c/a/i$f;->setRootAlpha(I)V

    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public final setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iput-boolean p1, v0, Landroid/support/c/a/i$g;->e:Z

    goto :goto_0
.end method

.method public final bridge synthetic setChangingConfigurations(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/c/a/h;->setChangingConfigurations(I)V

    return-void
.end method

.method public final bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/c/a/h;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/c/a/i;->f:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public final bridge synthetic setFilterBitmap(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/c/a/h;->setFilterBitmap(Z)V

    return-void
.end method

.method public final bridge synthetic setHotspot(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/c/a/h;->setHotspot(FF)V

    return-void
.end method

.method public final bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/c/a/h;->setHotspotBounds(IIII)V

    return-void
.end method

.method public final bridge synthetic setState([I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/support/c/a/h;->setState([I)Z

    move-result v0

    return v0
.end method

.method public final setTint(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/c/a/i;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v1, v0, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Landroid/support/c/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Landroid/support/c/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/c/a/i;->b:Landroid/support/c/a/i$g;

    iget-object v1, v0, Landroid/support/c/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Landroid/support/c/a/i$g;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, v0, Landroid/support/c/a/i$g;->c:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Landroid/support/c/a/i;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/c/a/i;->e:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/support/c/a/i;->invalidateSelf()V

    goto :goto_0
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/c/a/h;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/c/a/i;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/c/a/h;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
