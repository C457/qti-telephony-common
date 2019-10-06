.class public Lcom/android/nfc/cardemulation/AppChooserActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AppChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;,
        Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;,
        Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    }
.end annotation


# static fields
.field public static final EXTRA_APDU_SERVICES:Ljava/lang/String; = "services"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRA_FAILED_COMPONENT:Ljava/lang/String; = "failed_component"

.field static final TAG:Ljava/lang/String; = "AppChooserActivity"


# instance fields
.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mCategory:Ljava/lang/String;

.field private mIconSize:I

.field private mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

.field private mListView:Landroid/widget/ListView;

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/android/nfc/cardemulation/AppChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/AppChooserActivity$1;-><init>(Lcom/android/nfc/cardemulation/AppChooserActivity;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/cardemulation/AppChooserActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/AppChooserActivity;

    .line 52
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/cardemulation/AppChooserActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/AppChooserActivity;

    .line 52
    iget v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mIconSize:I

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 159
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "services"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 161
    .local v1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const-string v2, "category"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "category":Ljava/lang/String;
    const-string v3, "failed_component"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 163
    .local v3, "failedComponent":Landroid/content/ComponentName;
    invoke-virtual {p0, p1, v2, v1, v3}, Lcom/android/nfc/cardemulation/AppChooserActivity;->onCreate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/ComponentName;)V

    .line 164
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/ComponentName;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "category"    # Ljava/lang/String;
    .param p4, "failedComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .line 82
    .local p3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x10302d2

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->setTheme(I)V

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez p4, :cond_1

    .line 89
    const-string v1, "AppChooserActivity"

    const-string v2, "No components passed in."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->finish()V

    .line 91
    return-void

    .line 94
    :cond_1
    iput-object p2, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    .line 95
    const-string v1, "payment"

    iget-object v2, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 97
    .local v1, "isPayment":Z
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 98
    .local v2, "adapter":Landroid/nfc/NfcAdapter;
    invoke-static {v2}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 99
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 101
    .local v3, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 102
    .local v4, "am":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v5

    iput v5, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mIconSize:I

    .line 108
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 110
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v6, "unknown"

    .line 111
    .local v6, "applicationLabel":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    if-eqz p4, :cond_2

    .line 113
    :try_start_0
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 114
    .local v8, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    .line 116
    .end local v8    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 115
    :catch_0
    move-exception v8

    .line 119
    :cond_2
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_3

    if-eqz p4, :cond_3

    .line 120
    const v8, 0x7f06001d

    invoke-virtual {p0, v8}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "formatString":Ljava/lang/String;
    const-string v10, ""

    iput-object v10, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 122
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 123
    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->setupAlert()V

    .line 125
    .end local v8    # "formatString":Ljava/lang/String;
    goto/16 :goto_3

    .line 126
    :cond_3
    new-instance v8, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    invoke-direct {v8, p0, p0, p3}, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;-><init>(Lcom/android/nfc/cardemulation/AppChooserActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v8, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    .line 127
    if-eqz p4, :cond_4

    .line 128
    const v8, 0x7f06001e

    invoke-virtual {p0, v8}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 129
    .restart local v8    # "formatString":Ljava/lang/String;
    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 130
    const/high16 v9, 0x1040000

    invoke-virtual {p0, v9}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 131
    .end local v8    # "formatString":Ljava/lang/String;
    goto :goto_1

    .line 132
    :cond_4
    const-string v8, "payment"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 133
    const v8, 0x7f06001f

    invoke-virtual {p0, v8}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 135
    :cond_5
    const v8, 0x7f060020

    invoke-virtual {p0, v8}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 138
    :goto_1
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030003

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 140
    iget-object v8, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v9, 0x7f090006

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    .line 141
    if-eqz v1, :cond_6

    .line 142
    iget-object v7, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x41800000    # 16.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 144
    .local v7, "height":I
    iget-object v8, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 145
    .end local v7    # "height":I
    goto :goto_2

    .line 146
    :cond_6
    iget-object v8, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 148
    :goto_2
    iget-object v7, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    iget-object v7, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->setupAlert()V

    .line 153
    :goto_3
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    .line 154
    .local v7, "window":Landroid/view/Window;
    const/high16 v8, 0x400000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 155
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 168
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    invoke-virtual {v0, p3}, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;

    .line 169
    .local v0, "info":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v2, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->serviceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultForNextTap(Landroid/content/ComponentName;)Z

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v1, "dialogIntent":Landroid/content/Intent;
    const-string v2, "category"

    iget-object v3, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "apdu_service"

    iget-object v3, v0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->serviceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/AppChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->finish()V

    .line 175
    return-void
.end method
