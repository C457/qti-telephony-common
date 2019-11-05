.class public final Landroid/support/v7/widget/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/l$a;,
        Landroid/support/v7/widget/l$b;,
        Landroid/support/v7/widget/l$e;,
        Landroid/support/v7/widget/l$c;,
        Landroid/support/v7/widget/l$d;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/PorterDuff$Mode;

.field private static b:Landroid/support/v7/widget/l;

.field private static final c:Landroid/support/v7/widget/l$c;

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I


# instance fields
.field private j:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/g/m",
            "<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Landroid/support/v4/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/widget/l$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/support/v4/g/f",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private n:Landroid/util/TypedValue;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/v7/widget/l;->a:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/support/v7/widget/l$c;

    invoke-direct {v0}, Landroid/support/v7/widget/l$c;-><init>()V

    sput-object v0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/l$c;

    new-array v0, v6, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_textfield_search_default_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/a$e;->abc_textfield_default_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/a/a$e;->abc_ab_share_pack_mtrl_alpha:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/l;->d:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/a$e;->abc_seekbar_tick_mark_material:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/a/a$e;->abc_ic_menu_share_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/a/a$e;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v1, v0, v6

    sget v1, Landroid/support/v7/a/a$e;->abc_ic_menu_cut_mtrl_alpha:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Landroid/support/v7/a/a$e;->abc_ic_menu_selectall_mtrl_alpha:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroid/support/v7/a/a$e;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/l;->e:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_textfield_activated_mtrl_alpha:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/a$e;->abc_textfield_search_activated_mtrl_alpha:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/a/a$e;->abc_cab_background_top_mtrl_alpha:I

    aput v1, v0, v5

    sget v1, Landroid/support/v7/a/a$e;->abc_text_cursor_material:I

    aput v1, v0, v6

    sget v1, Landroid/support/v7/a/a$e;->abc_text_select_handle_left_mtrl_dark:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Landroid/support/v7/a/a$e;->abc_text_select_handle_middle_mtrl_dark:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Landroid/support/v7/a/a$e;->abc_text_select_handle_right_mtrl_dark:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Landroid/support/v7/a/a$e;->abc_text_select_handle_left_mtrl_light:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Landroid/support/v7/a/a$e;->abc_text_select_handle_middle_mtrl_light:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Landroid/support/v7/a/a$e;->abc_text_select_handle_right_mtrl_light:I

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/l;->f:[I

    new-array v0, v6, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/a$e;->abc_cab_background_internal_bg:I

    aput v1, v0, v4

    sget v1, Landroid/support/v7/a/a$e;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v5

    sput-object v0, Landroid/support/v7/widget/l;->g:[I

    new-array v0, v5, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_tab_indicator_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/a$e;->abc_textfield_search_material:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/l;->h:[I

    new-array v0, v5, [I

    sget v1, Landroid/support/v7/a/a$e;->abc_btn_check_material:I

    aput v1, v0, v3

    sget v1, Landroid/support/v7/a/a$e;->abc_btn_radio_material:I

    aput v1, v0, v4

    sput-object v0, Landroid/support/v7/widget/l;->i:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/l;->m:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static a(Landroid/util/TypedValue;)J
    .locals 4

    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 4

    const-class v1, Landroid/support/v7/widget/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/l$c;

    invoke-static {p0, p1}, Landroid/support/v7/widget/l$c;->a(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/l$c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object v2, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/l$c;

    invoke-static {p0, p1}, Landroid/support/v7/widget/l$c;->a(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/widget/l$c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v0, 0x0

    const v5, 0x102000f

    const v4, 0x102000d

    const/high16 v2, 0x1020000

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/l;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {p4}, Landroid/support/v7/widget/am;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    :cond_0
    invoke-static {p4}, Landroid/support/v4/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p4, v1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    sget v1, Landroid/support/v7/a/a$e;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p4, v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    :goto_0
    return-object p4

    :cond_3
    sget v1, Landroid/support/v7/a/a$e;->abc_seekbar_track_material:I

    if-ne p2, v1, :cond_4

    move-object v0, p4

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/l;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/l;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/support/v7/widget/l;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_4
    sget v1, Landroid/support/v7/a/a$e;->abc_ratingbar_material:I

    if-eq p2, v1, :cond_5

    sget v1, Landroid/support/v7/a/a$e;->abc_ratingbar_indicator_material:I

    if-eq p2, v1, :cond_5

    sget v1, Landroid/support/v7/a/a$e;->abc_ratingbar_small_material:I

    if-ne p2, v1, :cond_6

    :cond_5
    move-object v0, p4

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/bi;->c(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/l;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v2}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/support/v7/widget/l;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/support/v7/widget/l;->a:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/l;->a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_6
    invoke-static {p1, p2, p4}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    move-object p4, v0

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/l;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v4/g/f;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/support/v4/g/f;->c:[J

    iget v3, v0, Landroid/support/v4/g/f;->e:I

    invoke-static {v1, v3, p2, p3}, Landroid/support/v4/g/c;->a([JIJ)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v3, v0, Landroid/support/v4/g/f;->d:[Ljava/lang/Object;

    aget-object v3, v3, v1

    sget-object v4, Landroid/support/v4/g/f;->a:Ljava/lang/Object;

    if-eq v3, v4, :cond_2

    iget-object v3, v0, Landroid/support/v4/g/f;->d:[Ljava/lang/Object;

    sget-object v4, Landroid/support/v4/g/f;->a:Ljava/lang/Object;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/g/f;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized a()Landroid/support/v7/widget/l;
    .locals 4

    const-class v1, Landroid/support/v7/widget/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/l;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/l;

    invoke-direct {v0}, Landroid/support/v7/widget/l;-><init>()V

    sput-object v0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/l;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    const-string v2, "vector"

    new-instance v3, Landroid/support/v7/widget/l$e;

    invoke-direct {v3}, Landroid/support/v7/widget/l$e;-><init>()V

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/l;->a(Ljava/lang/String;Landroid/support/v7/widget/l$d;)V

    const-string v2, "animated-vector"

    new-instance v3, Landroid/support/v7/widget/l$b;

    invoke-direct {v3}, Landroid/support/v7/widget/l$b;-><init>()V

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/l;->a(Ljava/lang/String;Landroid/support/v7/widget/l$d;)V

    const-string v2, "animated-selector"

    new-instance v3, Landroid/support/v7/widget/l$a;

    invoke-direct {v3}, Landroid/support/v7/widget/l$a;-><init>()V

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/l;->a(Ljava/lang/String;Landroid/support/v7/widget/l$d;)V

    :cond_0
    sget-object v0, Landroid/support/v7/widget/l;->b:Landroid/support/v7/widget/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    invoke-static {p0}, Landroid/support/v7/widget/am;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Landroid/support/v7/widget/l;->a:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    invoke-static {p1, p2}, Landroid/support/v7/widget/l;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/bk;[I)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/support/v7/widget/am;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Landroid/support/v7/widget/bk;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v0, :cond_7

    :cond_2
    iget-boolean v0, p1, Landroid/support/v7/widget/bk;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/support/v7/widget/bk;->a:Landroid/content/res/ColorStateList;

    :goto_1
    iget-boolean v2, p1, Landroid/support/v7/widget/bk;->c:Z

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/support/v7/widget/bk;->b:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    if-eqz v0, :cond_3

    if-nez v2, :cond_6

    :cond_3
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    sget-object v2, Landroid/support/v7/widget/l;->a:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-static {v0, v2}, Landroid/support/v7/widget/l;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Landroid/support/v7/widget/l$d;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/l;->k:Landroid/support/v4/g/a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/g/a;

    invoke-direct {v0}, Landroid/support/v4/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/l;->k:Landroid/support/v4/g/a;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/l;->k:Landroid/support/v4/g/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 7

    const v2, 0x1010031

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v5, Landroid/support/v7/widget/l;->a:Landroid/graphics/PorterDuff$Mode;

    sget-object v4, Landroid/support/v7/widget/l;->d:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/l;->a([II)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v2, Landroid/support/v7/a/a$a;->colorControlNormal:I

    move v4, v2

    move-object v6, v5

    move v5, v0

    move v2, v3

    :goto_0
    if-eqz v5, :cond_6

    invoke-static {p2}, Landroid/support/v7/widget/am;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_0
    invoke-static {p0, v4}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1, v6}, Landroid/support/v7/widget/l;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v2, v3, :cond_1

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    :goto_1
    return v0

    :cond_2
    sget-object v4, Landroid/support/v7/widget/l;->f:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/l;->a([II)Z

    move-result v4

    if-eqz v4, :cond_3

    sget v2, Landroid/support/v7/a/a$a;->colorControlActivated:I

    move v4, v2

    move-object v6, v5

    move v5, v0

    move v2, v3

    goto :goto_0

    :cond_3
    sget-object v4, Landroid/support/v7/widget/l;->g:[I

    invoke-static {v4, p1}, Landroid/support/v7/widget/l;->a([II)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    move v5, v0

    move-object v6, v4

    move v4, v2

    move v2, v3

    goto :goto_0

    :cond_4
    sget v4, Landroid/support/v7/a/a$e;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v4, :cond_5

    const v4, 0x1010030

    const v2, 0x42233333    # 40.8f

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object v6, v5

    move v5, v0

    goto :goto_0

    :cond_5
    sget v4, Landroid/support/v7/a/a$e;->abc_dialog_material_background:I

    if-ne p1, v4, :cond_7

    move v4, v2

    move-object v6, v5

    move v5, v0

    move v2, v3

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    move v2, v3

    move v4, v1

    move-object v6, v5

    move v5, v1

    goto :goto_0
.end method

.method private declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/l;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/f;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/g/f;

    invoke-direct {v0}, Landroid/support/v4/g/f;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/l;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, v2}, Landroid/support/v4/g/f;->b(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a([II)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/l;->k:Landroid/support/v4/g/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/l;->k:Landroid/support/v4/g/a;

    invoke-virtual {v0}, Landroid/support/v4/g/a;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/l;->l:Landroid/support/v4/g/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/l;->l:Landroid/support/v4/g/m;

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/g/m;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "appcompat_skip_skip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/l;->k:Landroid/support/v4/g/a;

    invoke-virtual {v2, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/l;->l:Landroid/support/v4/g/m;

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/l;->n:Landroid/util/TypedValue;

    if-nez v0, :cond_4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/l;->n:Landroid/util/TypedValue;

    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/l;->n:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2, v2, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v2}, Landroid/support/v7/widget/l;->a(Landroid/util/TypedValue;)J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    iget-object v3, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, ".xml"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    :cond_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_7

    if-ne v0, v7, :cond_6

    :cond_7
    if-eq v0, v8, :cond_9

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "AppCompatDrawableManag"

    const-string v3, "Exception while inflating drawable"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/l;->l:Landroid/support/v4/g/m;

    const-string v2, "appcompat_skip_skip"

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/g/m;->c(ILjava/lang/Object;)V

    goto :goto_0

    :cond_9
    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Landroid/support/v7/widget/l;->l:Landroid/support/v4/g/m;

    invoke-virtual {v7, p2, v0}, Landroid/support/v4/g/m;->c(ILjava/lang/Object;)V

    iget-object v7, p0, Landroid/support/v7/widget/l;->k:Landroid/support/v4/g/a;

    invoke-virtual {v7, v0}, Landroid/support/v4/g/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/l$d;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-interface {v0, p1, v3, v6, v7}, Landroid/support/v7/widget/l$d;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_a
    if-eqz v1, :cond_b

    iget v0, v2, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {p0, p1, v4, v5, v1}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    move-object v0, v1

    goto :goto_1

    :cond_c
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private static d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 9

    const/4 v1, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v1, [[I

    new-array v1, v1, [I

    sget v2, Landroid/support/v7/a/a$a;->colorControlHighlight:I

    invoke-static {p0, v2}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v2

    sget v3, Landroid/support/v7/a/a$a;->colorButtonNormal:I

    invoke-static {p0, v3}, Landroid/support/v7/widget/bi;->c(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Landroid/support/v7/widget/bi;->a:[I

    aput-object v4, v0, v5

    aput v3, v1, v5

    sget-object v3, Landroid/support/v7/widget/bi;->d:[I

    aput-object v3, v0, v6

    invoke-static {v2, p1}, Landroid/support/v4/graphics/a;->a(II)I

    move-result v3

    aput v3, v1, v6

    sget-object v3, Landroid/support/v7/widget/bi;->b:[I

    aput-object v3, v0, v7

    invoke-static {v2, p1}, Landroid/support/v4/graphics/a;->a(II)I

    move-result v2

    aput v2, v1, v7

    sget-object v2, Landroid/support/v7/widget/bi;->h:[I

    aput-object v2, v0, v8

    aput p1, v1, v8

    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/support/v7/widget/l;->o:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/widget/l;->o:Z

    sget v2, Landroid/support/v7/a/a$e;->abc_vector_test:I

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/support/c/a/i;

    if-nez v3, :cond_0

    const-string v3, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/l;->o:Z

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/l;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/l;->n:Landroid/util/TypedValue;

    if-nez v0, :cond_4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/l;->n:Landroid/util/TypedValue;

    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/l;->n:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v1}, Landroid/support/v7/widget/l;->a(Landroid/util/TypedValue;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    sget v4, Landroid/support/v7/a/a$e;->abc_cab_background_top_material:I

    if-ne p2, v4, :cond_5

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    sget v6, Landroid/support/v7/a/a$e;->abc_cab_background_internal_bg:I

    invoke-virtual {p0, p1, v6}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget v6, Landroid/support/v7/a/a$e;->abc_cab_background_top_mtrl_alpha:I

    invoke-virtual {p0, p1, v6}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_5
    if-eqz v0, :cond_6

    iget v1, v1, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {p0, p1, v2, v3, v0}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_6
    if-nez v0, :cond_7

    invoke-static {p1, p2}, Landroid/support/v4/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {v0}, Landroid/support/v7/widget/am;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit p0

    return-object v0
.end method

.method final declared-synchronized a(Landroid/content/Context;Landroid/support/v7/widget/br;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3}, Landroid/support/v7/widget/l;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/br;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v1, v0}, Landroid/support/v7/widget/l;->a(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/l;->m:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/g/f;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/l;->j:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/l;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/m;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/g/m;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    :goto_0
    if-nez v0, :cond_3

    sget v1, Landroid/support/v7/a/a$e;->abc_edit_text_material:I

    if-ne p2, v1, :cond_6

    sget v0, Landroid/support/v7/a/a$c;->abc_tint_edittext:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/l;->j:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/l;->j:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/l;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/m;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/l;->j:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2, v1}, Landroid/support/v4/g/m;->c(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    move-object v0, v1

    :cond_3
    monitor-exit p0

    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    :try_start_1
    sget v1, Landroid/support/v7/a/a$e;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v1, :cond_7

    sget v0, Landroid/support/v7/a/a$c;->abc_tint_switch_track:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :cond_7
    sget v1, Landroid/support/v7/a/a$e;->abc_switch_thumb_material:I

    if-ne p2, v1, :cond_9

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    sget v1, Landroid/support/v7/a/a$a;->colorSwitchThumbNormal:I

    invoke-static {p1, v1}, Landroid/support/v7/widget/bi;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    sget-object v4, Landroid/support/v7/widget/bi;->a:[I

    aput-object v4, v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Landroid/support/v7/widget/bi;->e:[I

    aput-object v4, v0, v3

    const/4 v3, 0x1

    sget v4, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v4}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Landroid/support/v7/widget/bi;->h:[I

    aput-object v4, v0, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    aput v1, v2, v3

    :goto_2
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    const/4 v1, 0x0

    :try_start_2
    sget-object v3, Landroid/support/v7/widget/bi;->a:[I

    aput-object v3, v0, v1

    const/4 v1, 0x0

    sget v3, Landroid/support/v7/a/a$a;->colorSwitchThumbNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/bi;->c(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v1

    const/4 v1, 0x1

    sget-object v3, Landroid/support/v7/widget/bi;->e:[I

    aput-object v3, v0, v1

    const/4 v1, 0x1

    sget v3, Landroid/support/v7/a/a$a;->colorControlActivated:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v1

    const/4 v1, 0x2

    sget-object v3, Landroid/support/v7/widget/bi;->h:[I

    aput-object v3, v0, v1

    const/4 v1, 0x2

    sget v3, Landroid/support/v7/a/a$a;->colorSwitchThumbNormal:I

    invoke-static {p1, v3}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v3

    aput v3, v2, v1

    goto :goto_2

    :cond_9
    sget v1, Landroid/support/v7/a/a$e;->abc_btn_default_mtrl_shape:I

    if-ne p2, v1, :cond_a

    sget v0, Landroid/support/v7/a/a$a;->colorButtonNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v7/widget/l;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    sget v1, Landroid/support/v7/a/a$e;->abc_btn_borderless_material:I

    if-ne p2, v1, :cond_b

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v7/widget/l;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    sget v1, Landroid/support/v7/a/a$e;->abc_btn_colored_material:I

    if-ne p2, v1, :cond_c

    sget v0, Landroid/support/v7/a/a$a;->colorAccent:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/bi;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v7/widget/l;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    sget v1, Landroid/support/v7/a/a$e;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v1, :cond_d

    sget v1, Landroid/support/v7/a/a$e;->abc_spinner_textfield_background_material:I

    if-ne p2, v1, :cond_e

    :cond_d
    sget v0, Landroid/support/v7/a/a$c;->abc_tint_spinner:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :cond_e
    sget-object v1, Landroid/support/v7/widget/l;->e:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/l;->a([II)Z

    move-result v1

    if-eqz v1, :cond_f

    sget v0, Landroid/support/v7/a/a$a;->colorControlNormal:I

    invoke-static {p1, v0}, Landroid/support/v7/widget/bi;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :cond_f
    sget-object v1, Landroid/support/v7/widget/l;->h:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/l;->a([II)Z

    move-result v1

    if-eqz v1, :cond_10

    sget v0, Landroid/support/v7/a/a$c;->abc_tint_default:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :cond_10
    sget-object v1, Landroid/support/v7/widget/l;->i:[I

    invoke-static {v1, p2}, Landroid/support/v7/widget/l;->a([II)Z

    move-result v1

    if-eqz v1, :cond_11

    sget v0, Landroid/support/v7/a/a$c;->abc_tint_btn_checkable:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_1

    :cond_11
    sget v1, Landroid/support/v7/a/a$e;->abc_seekbar_thumb_material:I

    if-ne p2, v1, :cond_12

    sget v0, Landroid/support/v7/a/a$c;->abc_tint_seek_thumb:I

    invoke-static {p1, v0}, Landroid/support/v7/b/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto/16 :goto_1

    :cond_12
    move-object v1, v0

    goto/16 :goto_1
.end method
