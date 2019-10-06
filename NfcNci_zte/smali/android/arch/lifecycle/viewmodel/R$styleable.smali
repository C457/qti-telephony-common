.class public final Landroid/arch/lifecycle/viewmodel/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/viewmodel/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static FontFamilyFont_android_font:I

.field public static FontFamilyFont_android_fontStyle:I

.field public static FontFamilyFont_android_fontVariationSettings:I

.field public static FontFamilyFont_android_fontWeight:I

.field public static FontFamilyFont_android_ttcIndex:I

.field public static FontFamilyFont_font:I

.field public static FontFamilyFont_fontStyle:I

.field public static FontFamilyFont_fontVariationSettings:I

.field public static FontFamilyFont_fontWeight:I

.field public static FontFamilyFont_ttcIndex:I

.field public static FontFamily_fontProviderAuthority:I

.field public static FontFamily_fontProviderCerts:I

.field public static FontFamily_fontProviderFetchStrategy:I

.field public static FontFamily_fontProviderFetchTimeout:I

.field public static FontFamily_fontProviderPackage:I

.field public static FontFamily_fontProviderQuery:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 253
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamily:[I

    .line 267
    const/4 v1, 0x0

    sput v1, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamily_fontProviderAuthority:I

    .line 284
    const/4 v2, 0x1

    sput v2, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamily_fontProviderCerts:I

    .line 316
    const/4 v3, 0x2

    sput v3, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    .line 335
    const/4 v4, 0x3

    sput v4, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    .line 347
    const/4 v5, 0x4

    sput v5, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamily_fontProviderPackage:I

    .line 359
    const/4 v6, 0x5

    sput v6, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamily_fontProviderQuery:I

    .line 389
    const/16 v7, 0xa

    new-array v7, v7, [I

    fill-array-data v7, :array_1

    sput-object v7, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont:[I

    .line 407
    sput v1, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont_font:I

    .line 427
    sput v2, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont_fontStyle:I

    .line 441
    sput v3, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont_fontVariationSettings:I

    .line 455
    sput v4, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont_fontWeight:I

    .line 466
    sput v5, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont_ttcIndex:I

    .line 478
    sput v6, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont_android_font:I

    .line 487
    sput v0, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont_android_fontWeight:I

    .line 505
    const/4 v0, 0x7

    sput v0, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont_android_fontStyle:I

    .line 514
    const/16 v0, 0x8

    sput v0, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont_android_ttcIndex:I

    .line 524
    const/16 v0, 0x9

    sput v0, Landroid/arch/lifecycle/viewmodel/R$styleable;->FontFamilyFont_android_fontVariationSettings:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1010532
        0x1010533
        0x101053f
        0x101056f
        0x1010570
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
