.class public final Landroid/arch/lifecycle/livedata/core/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/livedata/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static notification_action_color_filter:I

.field public static notification_icon_bg_color:I

.field public static ripple_material_light:I

.field public static secondary_text_default_material_light:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    const/4 v0, 0x0

    sput v0, Landroid/arch/lifecycle/livedata/core/R$color;->notification_action_color_filter:I

    .line 136
    sput v0, Landroid/arch/lifecycle/livedata/core/R$color;->notification_icon_bg_color:I

    .line 137
    sput v0, Landroid/arch/lifecycle/livedata/core/R$color;->ripple_material_light:I

    .line 138
    sput v0, Landroid/arch/lifecycle/livedata/core/R$color;->secondary_text_default_material_light:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
