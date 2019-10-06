.class public Lcom/android/nfc/beam/SendUi;
.super Ljava/lang/Object;
.source "SendUi.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/animation/TimeAnimator$TimeListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/SendUi$ScreenshotTask;,
        Lcom/android/nfc/beam/SendUi$Callback;
    }
.end annotation


# static fields
.field static final BLACK_LAYER_ALPHA_DOWN_RANGE:[F

.field static final BLACK_LAYER_ALPHA_UP_RANGE:[F

.field static final FADE_IN_DURATION_MS:I = 0xfa

.field static final FADE_IN_START_DELAY_MS:I = 0x15e

.field static final FAST_SEND_DURATION_MS:I = 0x15e

.field public static final FINISH_SCALE_UP:I = 0x0

.field public static final FINISH_SEND_SUCCESS:I = 0x1

.field static final INTERMEDIATE_SCALE:F = 0.6f

.field static final PRE_DURATION_MS:I = 0x15e

.field static final PRE_SCREENSHOT_SCALE:[F

.field static final SCALE_UP_DURATION_MS:I = 0x12c

.field static final SCALE_UP_SCREENSHOT_SCALE:[F

.field static final SEND_SCREENSHOT_SCALE:[F

.field static final SLIDE_OUT_DURATION_MS:I = 0x12c

.field static final SLOW_SEND_DURATION_MS:I = 0x1f40

.field static final STATE_COMPLETE:I = 0x9

.field static final STATE_IDLE:I = 0x0

.field static final STATE_SENDING:I = 0x8

.field static final STATE_W4_NFC_TAP:I = 0x7

.field static final STATE_W4_PRESEND:I = 0x5

.field static final STATE_W4_SCREENSHOT:I = 0x1

.field static final STATE_W4_SCREENSHOT_PRESEND_NFC_TAP_REQUESTED:I = 0x3

.field static final STATE_W4_SCREENSHOT_PRESEND_REQUESTED:I = 0x2

.field static final STATE_W4_SCREENSHOT_THEN_STOP:I = 0x4

.field static final STATE_W4_TOUCH:I = 0x6

.field static final TAG:Ljava/lang/String; = "SendUi"

.field static final TEXT_HINT_ALPHA_DURATION_MS:I = 0x1f4

.field static final TEXT_HINT_ALPHA_RANGE:[F

.field static final TEXT_HINT_ALPHA_START_DELAY_MS:I = 0x12c


# instance fields
.field final mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

.field final mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

.field final mBlackLayer:Landroid/widget/ImageView;

.field final mCallback:Lcom/android/nfc/beam/SendUi$Callback;

.field final mContext:Landroid/content/Context;

.field mDecor:Landroid/view/View;

.field final mDisplay:Landroid/view/Display;

.field final mDisplayMatrix:Landroid/graphics/Matrix;

.field final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field final mFadeInAnimator:Landroid/animation/ObjectAnimator;

.field final mFastSendAnimator:Landroid/animation/ObjectAnimator;

.field final mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

.field final mFrameCounterAnimator:Landroid/animation/TimeAnimator;

.field final mHardwareAccelerated:Z

.field final mHintAnimator:Landroid/animation/ObjectAnimator;

.field final mLayoutInflater:Landroid/view/LayoutInflater;

.field final mPreAnimator:Landroid/animation/ObjectAnimator;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRenderedFrames:I

.field final mScaleUpAnimator:Landroid/animation/ObjectAnimator;

.field mScreenshotBitmap:Landroid/graphics/Bitmap;

.field final mScreenshotLayout:Landroid/view/View;

.field final mScreenshotView:Landroid/widget/ImageView;

.field final mSlowSendAnimator:Landroid/animation/ObjectAnimator;

.field mState:I

.field final mStatusBarManager:Landroid/app/StatusBarManager;

.field final mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

.field mSurface:Landroid/graphics/SurfaceTexture;

.field mSurfaceHeight:I

.field mSurfaceWidth:I

.field final mTextHint:Landroid/widget/TextView;

.field final mTextRetry:Landroid/widget/TextView;

.field final mTextureView:Landroid/view/TextureView;

.field mToastString:Ljava/lang/String;

.field final mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 120
    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/nfc/beam/SendUi;->PRE_SCREENSHOT_SCALE:[F

    .line 123
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/nfc/beam/SendUi;->SEND_SCREENSHOT_SCALE:[F

    .line 127
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/nfc/beam/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    .line 135
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_DOWN_RANGE:[F

    .line 136
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_UP_RANGE:[F

    .line 138
    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/nfc/beam/SendUi;->TEXT_HINT_ALPHA_RANGE:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f666666    # 0.9f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/SendUi$Callback;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/SendUi$Callback;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 918
    new-instance v2, Lcom/android/nfc/beam/SendUi$1;

    invoke-direct {v2, v0}, Lcom/android/nfc/beam/SendUi$1;-><init>(Lcom/android/nfc/beam/SendUi;)V

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 223
    iput-object v1, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    .line 224
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/nfc/beam/SendUi;->mCallback:Lcom/android/nfc/beam/SendUi$Callback;

    .line 226
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 227
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 228
    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    .line 229
    const-string v3, "statusbar"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 231
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    .line 233
    const-string v3, "layout_inflater"

    .line 234
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 235
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    const v5, 0x7f030005

    invoke-virtual {v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    .line 237
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v5, 0x7f09000e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    .line 238
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 240
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v6, 0x7f09000d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    .line 241
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v6, 0x7f090010

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    .line 242
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v6, 0x7f09000f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    .line 243
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    const v6, 0x7f09000c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/TextureView;

    iput-object v3, v0, Lcom/android/nfc/beam/SendUi;->mTextureView:Landroid/view/TextureView;

    .line 244
    iget-object v3, v0, Lcom/android/nfc/beam/SendUi;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 249
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    .line 250
    iget-boolean v3, v0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 251
    const/high16 v3, 0x1000000

    goto :goto_0

    :cond_0
    move v3, v6

    .line 253
    .local v3, "hwAccelerationFlags":I
    :goto_0
    new-instance v15, Landroid/view/WindowManager$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7d3

    const/16 v7, 0x400

    or-int/2addr v7, v3

    or-int/lit16 v13, v7, 0x100

    const/4 v14, -0x1

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v15, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 260
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 262
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    iput-object v8, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 264
    new-instance v7, Landroid/animation/TimeAnimator;

    invoke-direct {v7}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v7, v0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    .line 265
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v7, v0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 267
    const-string v7, "scaleX"

    sget-object v8, Lcom/android/nfc/beam/SendUi;->PRE_SCREENSHOT_SCALE:[F

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 268
    .local v7, "preX":Landroid/animation/PropertyValuesHolder;
    const-string v8, "scaleY"

    sget-object v9, Lcom/android/nfc/beam/SendUi;->PRE_SCREENSHOT_SCALE:[F

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 269
    .local v8, "preY":Landroid/animation/PropertyValuesHolder;
    iget-object v9, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v10, 0x2

    new-array v11, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v11, v6

    aput-object v8, v11, v5

    invoke-static {v9, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iput-object v9, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    .line 270
    iget-object v9, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 271
    iget-object v9, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v11, 0x15e

    invoke-virtual {v9, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    iget-object v9, v0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 274
    const-string v9, "scaleX"

    sget-object v13, Lcom/android/nfc/beam/SendUi;->SEND_SCREENSHOT_SCALE:[F

    invoke-static {v9, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 275
    .local v9, "postX":Landroid/animation/PropertyValuesHolder;
    const-string v13, "scaleY"

    sget-object v14, Lcom/android/nfc/beam/SendUi;->SEND_SCREENSHOT_SCALE:[F

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 276
    .local v13, "postY":Landroid/animation/PropertyValuesHolder;
    const-string v14, "alpha"

    new-array v15, v10, [F

    fill-array-data v15, :array_0

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 279
    .local v14, "alphaDown":Landroid/animation/PropertyValuesHolder;
    iget-object v15, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    new-array v4, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v9, v4, v6

    aput-object v13, v4, v5

    invoke-static {v15, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    .line 280
    iget-object v4, v0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    iget-object v4, v0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v11, 0x1f40

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 283
    iget-object v4, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v9, v11, v6

    aput-object v13, v11, v5

    aput-object v14, v11, v10

    invoke-static {v4, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iput-object v4, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    .line 285
    iget-object v4, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    iget-object v4, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v11, 0x15e

    invoke-virtual {v4, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    iget-object v4, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    const-string v4, "scaleX"

    sget-object v11, Lcom/android/nfc/beam/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    invoke-static {v4, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 290
    .local v4, "scaleUpX":Landroid/animation/PropertyValuesHolder;
    const-string v11, "scaleY"

    sget-object v12, Lcom/android/nfc/beam/SendUi;->SCALE_UP_SCREENSHOT_SCALE:[F

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 292
    .local v11, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    new-array v15, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v15, v6

    aput-object v11, v15, v5

    invoke-static {v12, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v12

    iput-object v12, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    .line 293
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v16, v11

    const-wide/16 v10, 0x12c

    .end local v11    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    .local v16, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v12, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 295
    iget-object v12, v0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v12, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 297
    const-string v12, "alpha"

    new-array v15, v5, [F

    const/high16 v17, 0x3f800000    # 1.0f

    aput v17, v15, v6

    invoke-static {v12, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 298
    .local v12, "fadeIn":Landroid/animation/PropertyValuesHolder;
    iget-object v15, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    new-array v10, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v10, v6

    invoke-static {v15, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    .line 299
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-instance v11, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v18, v7

    const-wide/16 v6, 0xfa

    .end local v7    # "preX":Landroid/animation/PropertyValuesHolder;
    .local v18, "preX":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    iget-object v6, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x15e

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 302
    iget-object v6, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 304
    const-string v6, "alpha"

    sget-object v7, Lcom/android/nfc/beam/SendUi;->TEXT_HINT_ALPHA_RANGE:[F

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 305
    .local v6, "alphaUp":Landroid/animation/PropertyValuesHolder;
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    new-array v10, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v7, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    .line 306
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    iget-object v7, v0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 310
    const-string v7, "alpha"

    sget-object v10, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_DOWN_RANGE:[F

    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 311
    .end local v14    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    .local v7, "alphaDown":Landroid/animation/PropertyValuesHolder;
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    new-array v11, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v7, v11, v14

    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    .line 312
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 313
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0x190

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 315
    const-string v10, "alpha"

    sget-object v11, Lcom/android/nfc/beam/SendUi;->BLACK_LAYER_ALPHA_UP_RANGE:[F

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 316
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    new-array v11, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v14, 0x0

    aput-object v6, v11, v14

    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, v0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    .line 317
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v14, 0xc8

    invoke-virtual {v10, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 320
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, v0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    .line 321
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v11, 0x2

    new-array v11, v11, [Landroid/animation/Animator;

    iget-object v14, v0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    const/4 v15, 0x0

    aput-object v14, v11, v15

    iget-object v14, v0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    aput-object v14, v11, v5

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 325
    iget-object v10, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    const v11, 0x103000a

    invoke-virtual {v10, v11}, Landroid/content/Context;->setTheme(I)V

    .line 326
    new-instance v10, Lcom/android/internal/policy/PhoneWindow;

    iget-object v11, v0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 327
    .local v10, "window":Landroid/view/Window;
    invoke-virtual {v10, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 328
    invoke-virtual {v10, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 329
    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/nfc/beam/SendUi;->mDecor:Landroid/view/View;

    .line 330
    iget-object v5, v0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    iget-object v11, v0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10, v5, v11}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    iget-boolean v5, v0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-eqz v5, :cond_1

    .line 333
    new-instance v5, Lcom/android/nfc/beam/FireflyRenderer;

    invoke-direct {v5, v1}, Lcom/android/nfc/beam/FireflyRenderer;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    goto :goto_1

    .line 335
    :cond_1
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    .line 337
    :goto_1
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 338
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static getDegreesForRotation(I)F
    .locals 1
    .param p0, "value"    # I

    .line 585
    packed-switch p0, :pswitch_data_0

    .line 593
    const/4 v0, 0x0

    return v0

    .line 591
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    .line 589
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    .line 587
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private recycleBitmap()V
    .locals 3

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :cond_0
    goto :goto_0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SendUi"

    const-string v2, "Error while recycle bitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 579
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method createScreenshot()Landroid/graphics/Bitmap;
    .locals 14

    .line 634
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 636
    .local v0, "hasNavBar":Z
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10501a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 640
    .local v1, "statusBarHeight":I
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050123

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    .line 641
    :cond_0
    move v3, v2

    .line 642
    .local v3, "navBarHeight":I
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050125

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_1

    .line 643
    :cond_1
    move v4, v2

    .line 645
    .local v4, "navBarHeightLandscape":I
    :goto_1
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050128

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_2

    .line 646
    :cond_2
    move v5, v2

    .line 648
    .local v5, "navBarWidth":I
    :goto_2
    iget-object v6, p0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 649
    iget-object v6, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    .line 651
    .local v6, "smallestWidth":F
    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    div-float v7, v6, v7

    .line 653
    .local v7, "smallestWidthDp":F
    iget-object v8, p0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 659
    .local v8, "rot":I
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v9, v2, v1, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v9

    .line 661
    .local v2, "crop":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v9, v10, :cond_3

    .line 663
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 666
    :cond_3
    const v9, 0x4415c000    # 599.0f

    cmpl-float v9, v7, v9

    if-lez v9, :cond_4

    .line 668
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v4

    iput v9, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 671
    :cond_4
    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v5

    iput v9, v2, Landroid/graphics/Rect;->right:I

    .line 675
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 676
    .local v9, "width":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 679
    .local v10, "height":I
    invoke-static {v2, v9, v10, v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 681
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    if-nez v11, :cond_5

    .line 682
    const-string v12, "SendUi"

    const-string v13, "createScreenshot: bitmap == null!"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v12, 0x0

    return-object v12

    .line 687
    :cond_5
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 688
    .local v12, "swBitmap":Landroid/graphics/Bitmap;
    return-object v12
.end method

.method dismiss()V
    .locals 4

    .line 542
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    return-void

    .line 546
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 547
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 548
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v2}, Landroid/animation/TimeAnimator;->cancel()V

    .line 549
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 550
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 551
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 552
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 553
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 554
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 555
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 556
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 557
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 558
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 559
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 560
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 562
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 563
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 565
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_1
    iput-object v1, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    .line 566
    invoke-direct {p0}, Lcom/android/nfc/beam/SendUi;->recycleBitmap()V

    .line 567
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 800
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 801
    .local v0, "keyCode":I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 802
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mCallback:Lcom/android/nfc/beam/SendUi$Callback;

    invoke-interface {v1}, Lcom/android/nfc/beam/SendUi$Callback;->onCanceled()V

    .line 803
    const/4 v1, 0x1

    return v1

    .line 804
    :cond_0
    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 809
    :cond_1
    const/4 v1, 0x0

    return v1

    .line 807
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/beam/SendUi;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 815
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 835
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 820
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 825
    const/4 v0, 0x0

    return v0
.end method

.method public finish(I)V
    .locals 11
    .param p1, "finishMode"    # I

    .line 472
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 499
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    invoke-virtual {v0}, Lcom/android/nfc/beam/FireflyRenderer;->stop()V

    goto :goto_0

    .line 489
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 490
    invoke-direct {p0}, Lcom/android/nfc/beam/SendUi;->recycleBitmap()V

    .line 491
    iput v1, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 492
    return-void

    .line 483
    :pswitch_1
    const-string v0, "SendUi"

    const-string v1, "Unexpected call to finish() in STATE_W4_SCREENSHOT_THEN_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void

    .line 480
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 481
    return-void

    .line 474
    :pswitch_3
    return-void

    .line 503
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    .line 507
    .local v0, "currentScale":F
    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    .line 509
    .local v3, "currentAlpha":F
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez p1, :cond_1

    .line 510
    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    const-string v2, "scaleX"

    new-array v7, v5, [F

    aput v0, v7, v1

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v7, v6

    invoke-static {v2, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 513
    .local v2, "scaleUpX":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v9, v5, [F

    aput v0, v9, v1

    aput v8, v9, v6

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 515
    .local v7, "scaleUpY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "alpha"

    new-array v10, v5, [F

    aput v3, v10, v1

    aput v8, v10, v6

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 517
    .local v8, "scaleUpAlpha":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v1

    aput-object v7, v4, v6

    aput-object v8, v4, v5

    invoke-virtual {v9, v4}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 519
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 520
    .end local v2    # "scaleUpX":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "scaleUpY":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "scaleUpAlpha":Landroid/animation/PropertyValuesHolder;
    goto :goto_1

    :cond_1
    if-ne p1, v6, :cond_2

    .line 522
    const-string v2, "scaleX"

    new-array v7, v5, [F

    aput v0, v7, v1

    const/4 v8, 0x0

    aput v8, v7, v6

    invoke-static {v2, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 524
    .local v2, "postX":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleY"

    new-array v9, v5, [F

    aput v0, v9, v1

    aput v8, v9, v6

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 526
    .local v7, "postY":Landroid/animation/PropertyValuesHolder;
    const-string v9, "alpha"

    new-array v10, v5, [F

    aput v3, v10, v1

    aput v8, v10, v6

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 528
    .local v8, "alpha":Landroid/animation/PropertyValuesHolder;
    iget-object v9, p0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v1

    aput-object v7, v4, v6

    aput-object v8, v4, v5

    invoke-virtual {v9, v4}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 531
    const-string v4, "alpha"

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 533
    .local v4, "fadeIn":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 535
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 536
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 538
    .end local v2    # "postX":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "fadeIn":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "postY":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "alpha":Landroid/animation/PropertyValuesHolder;
    :cond_2
    :goto_1
    const/16 v1, 0x9

    iput v1, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 539
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public finishAndToast(ILjava/lang/String;)V
    .locals 0
    .param p1, "finishMode"    # I
    .param p2, "toast"    # Ljava/lang/String;

    .line 465
    iput-object p2, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/SendUi;->finish(I)V

    .line 468
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 916
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 912
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 713
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 696
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScaleUpAnimator:Landroid/animation/ObjectAnimator;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSuccessAnimatorSet:Landroid/animation/AnimatorSet;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFadeInAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFastSendAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 704
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_1

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    if-ne p1, v0, :cond_4

    .line 706
    iget-boolean v0, p0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 707
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFireflyRenderer:Lcom/android/nfc/beam/FireflyRenderer;

    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/beam/FireflyRenderer;->start(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_1

    .line 699
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/beam/SendUi;->dismiss()V

    .line 710
    :cond_4
    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 716
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 692
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 878
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .line 869
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .line 840
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 882
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 860
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 887
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 896
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .param p1, "searchEvent"    # Landroid/view/SearchEvent;

    .line 891
    invoke-virtual {p0}, Lcom/android/nfc/beam/SendUi;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 752
    iget-boolean v0, p0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 753
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mRenderedFrames:I

    .line 755
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 756
    iput-object p1, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 757
    iput p2, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceWidth:I

    .line 758
    iput p3, p0, Lcom/android/nfc/beam/SendUi;->mSurfaceHeight:I

    .line 760
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 769
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 771
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 765
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 775
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .line 721
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mRenderedFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mRenderedFrames:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 729
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 731
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 735
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 736
    const/4 v0, 0x0

    return v0

    .line 738
    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 740
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 743
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mFrameCounterAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 744
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 746
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mCallback:Lcom/android/nfc/beam/SendUi$Callback;

    invoke-interface {v0}, Lcom/android/nfc/beam/SendUi$Callback;->onSendConfirmed()V

    .line 747
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 865
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 873
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .line 902
    const/4 v0, 0x0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;
    .param p2, "type"    # I

    .line 907
    const/4 v0, 0x0

    return-object v0
.end method

.method public showPreSend(Z)V
    .locals 7
    .param p1, "promptToNfcTap"    # Z

    .line 355
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 376
    const-string v0, "SendUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected showPreSend() in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 370
    :pswitch_0
    const-string v0, "SendUi"

    const-string v1, "Unexpected showPreSend() in STATE_W4_SCREENSHOT_PRESEND_REQUESTED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 362
    :pswitch_1
    if-eqz p1, :cond_0

    .line 363
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    goto :goto_0

    .line 365
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 367
    :goto_0
    return-void

    .line 357
    :pswitch_2
    const-string v0, "SendUi"

    const-string v1, "Unexpected showPreSend() in STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 374
    :cond_1
    nop

    .line 380
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 382
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 385
    .local v0, "statusBarHeight":I
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 387
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 388
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 389
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 390
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 391
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 393
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 395
    if-eqz p1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 398
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    :goto_1
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 401
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 402
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mHintAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 410
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 412
    .local v1, "orientation":I
    const/4 v2, 0x6

    const/4 v3, 0x7

    packed-switch v1, :pswitch_data_1

    .line 422
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_2

    .line 414
    :pswitch_3
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 416
    goto :goto_2

    .line 418
    :pswitch_4
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 420
    nop

    .line 427
    :goto_2
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mDecor:Landroid/view/View;

    iget-object v6, p0, Lcom/android/nfc/beam/SendUi;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 431
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/nfc/beam/SendUi;->mToastString:Ljava/lang/String;

    .line 433
    iget-boolean v4, p0, Lcom/android/nfc/beam/SendUi;->mHardwareAccelerated:Z

    if-nez v4, :cond_3

    .line 434
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mPreAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 436
    :cond_3
    if-eqz p1, :cond_4

    move v2, v3

    nop

    :cond_4
    iput v2, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 437
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public showSendHint()V
    .locals 5

    .line 778
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 782
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 785
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 786
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 792
    const-string v0, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object v3, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    .line 793
    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v2, v1

    const v3, 0x3f666666    # 0.9f

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 792
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 794
    .local v0, "alphaUp":Landroid/animation/PropertyValuesHolder;
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 795
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mAlphaUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 796
    return-void
.end method

.method public showStartSend()V
    .locals 9

    .line 441
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mTextRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    .line 447
    .local v0, "currentScale":F
    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v3, v6

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 449
    .local v1, "postX":Landroid/animation/PropertyValuesHolder;
    const-string v3, "scaleY"

    new-array v7, v2, [F

    aput v0, v7, v4

    aput v5, v7, v6

    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 452
    .local v3, "postY":Landroid/animation/PropertyValuesHolder;
    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    new-array v8, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 454
    iget-object v7, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getAlpha()F

    move-result v7

    .line 455
    .local v7, "currentAlpha":F
    iget-object v8, p0, Lcom/android/nfc/beam/SendUi;->mBlackLayer:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_1

    cmpl-float v8, v7, v5

    if-lez v8, :cond_1

    .line 456
    const-string v8, "alpha"

    new-array v2, v2, [F

    aput v7, v2, v4

    aput v5, v2, v6

    invoke-static {v8, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 458
    .local v2, "alphaDown":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v4

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 459
    iget-object v4, p0, Lcom/android/nfc/beam/SendUi;->mAlphaDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 461
    .end local v2    # "alphaDown":Landroid/animation/PropertyValuesHolder;
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mSlowSendAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 462
    return-void
.end method

.method public takeScreenshot()V
    .locals 3

    .line 343
    iget v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 344
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 347
    new-instance v0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;-><init>(Lcom/android/nfc/beam/SendUi;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/SendUi;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    return-void
.end method
