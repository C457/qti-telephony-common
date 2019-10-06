.class public Lcom/android/nfc/AidTableFullActivity;
.super Landroid/app/Activity;
.source "AidTableFullActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static final TAG:Ljava/lang/String; = "AidTableFullActivity"


# instance fields
.field private btnOK:Landroid/widget/Button;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/nfc/DemoBean;",
            ">;"
        }
    .end annotation
.end field

.field private lvListView:Landroid/widget/ListView;

.field private mAdapter:Lcom/android/nfc/DemoAdapter;

.field mFullServiceName:Ljava/lang/String;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

.field private mUserId:I

.field mservicesAidCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->btnOK:Landroid/widget/Button;

    .line 38
    iput-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->lvListView:Landroid/widget/ListView;

    .line 39
    iput-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->mAdapter:Lcom/android/nfc/DemoAdapter;

    .line 40
    iput-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->mservicesAidCache:Ljava/util/Map;

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/AidTableFullActivity;->mUserId:I

    .line 45
    iput-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->datas:Ljava/util/List;

    return-void
.end method

.method private initData()V
    .locals 18

    .line 67
    move-object/from16 v1, p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/AidTableFullActivity;->mUserId:I

    .line 70
    :try_start_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getCardEmulationManager()Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    iget v2, v1, Lcom/android/nfc/AidTableFullActivity;->mUserId:I

    const-string v3, "other"

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getServicesAidCacheSize(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/android/nfc/AidTableFullActivity;->mservicesAidCache:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AidTableFullActivity"

    const-string v3, "baojian getServicesAidCacheSize failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, v1, Lcom/android/nfc/AidTableFullActivity;->mservicesAidCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 76
    .local v2, "serviceSet":Ljava/util/Set;
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/AidTableFullActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 77
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 78
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v4, 0x0

    .line 79
    .local v4, "comName":Landroid/content/ComponentName;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/nfc/AidTableFullActivity;->datas:Ljava/util/List;

    .line 80
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v4

    move-object v4, v0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v6, "comName":Landroid/content/ComponentName;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 81
    .local v7, "key":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 83
    .local v8, "packageName":[Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_1
    aget-object v9, v8, v0

    invoke-virtual {v3, v9, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    move-object v4, v9

    .line 84
    new-instance v9, Landroid/content/ComponentName;

    aget-object v0, v8, v0

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-direct {v9, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v9

    .line 88
    .end local v6    # "comName":Landroid/content/ComponentName;
    .local v0, "comName":Landroid/content/ComponentName;
    nop

    .line 89
    move-object v6, v0

    move-object v0, v4

    goto :goto_2

    .line 86
    .end local v0    # "comName":Landroid/content/ComponentName;
    .restart local v6    # "comName":Landroid/content/ComponentName;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 89
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_3

    :cond_0
    const-string v4, "unkown"

    :goto_3
    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, "ServiceName":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/nfc/AidTableFullActivity;->mFullServiceName:Ljava/lang/String;

    .line 91
    iget-object v15, v1, Lcom/android/nfc/AidTableFullActivity;->datas:Ljava/util/List;

    new-instance v14, Lcom/android/nfc/DemoBean;

    iget-object v13, v1, Lcom/android/nfc/AidTableFullActivity;->mFullServiceName:Ljava/lang/String;

    const/16 v16, 0x1

    move-object v9, v14

    move-object v10, v4

    move-object v11, v0

    move-object v12, v6

    move-object/from16 v17, v0

    move-object v0, v14

    move/from16 v14, v16

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v17, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct/range {v9 .. v14}, Lcom/android/nfc/DemoBean;-><init>(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Ljava/lang/String;Z)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v4    # "ServiceName":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/Object;
    .end local v8    # "packageName":[Ljava/lang/String;
    nop

    .line 80
    move-object/from16 v4, v17

    goto :goto_1

    .line 93
    .end local v17    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    new-instance v0, Lcom/android/nfc/DemoAdapter;

    iget-object v5, v1, Lcom/android/nfc/AidTableFullActivity;->datas:Ljava/util/List;

    invoke-direct {v0, v1, v5}, Lcom/android/nfc/DemoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/nfc/AidTableFullActivity;->mAdapter:Lcom/android/nfc/DemoAdapter;

    .line 94
    iget-object v0, v1, Lcom/android/nfc/AidTableFullActivity;->lvListView:Landroid/widget/ListView;

    iget-object v5, v1, Lcom/android/nfc/AidTableFullActivity;->mAdapter:Lcom/android/nfc/DemoAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method

.method private initView()V
    .locals 2

    .line 60
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcom/android/nfc/AidTableFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->btnOK:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->btnOK:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Lcom/android/nfc/AidTableFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->lvListView:Landroid/widget/ListView;

    .line 63
    iget-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->lvListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 64
    const-string v0, "AidTableFullActivity"

    const-string v1, "initview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->btnOK:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 100
    const-string v0, "AidTableFullActivity"

    const-string v1, "baojian OK is onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/android/nfc/AidTableFullActivity;->finish()V

    .line 103
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/android/nfc/AidTableFullActivity;->setContentView(I)V

    .line 50
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 51
    iget-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 52
    iget-object v0, p0, Lcom/android/nfc/AidTableFullActivity;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    if-nez v0, :cond_0

    .line 53
    const-string v0, "AidTableFullActivity"

    const-string v1, " NxpNfc is not avaliable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/AidTableFullActivity;->initView()V

    .line 56
    invoke-direct {p0}, Lcom/android/nfc/AidTableFullActivity;->initData()V

    .line 57
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "itemLayout"    # Landroid/view/View;
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

    .line 106
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/nfc/DemoAdapter$ViewHolder;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DemoAdapter$ViewHolder;

    .line 108
    .local v0, "holder":Lcom/android/nfc/DemoAdapter$ViewHolder;
    iget-object v1, v0, Lcom/android/nfc/DemoAdapter$ViewHolder;->cbCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 110
    .end local v0    # "holder":Lcom/android/nfc/DemoAdapter$ViewHolder;
    :cond_0
    return-void
.end method
