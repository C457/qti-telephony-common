.class public Lcom/android/nfc/DemoAdapter;
.super Landroid/widget/BaseAdapter;
.source "DemoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/DemoAdapter$ViewHolder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "DemoAdapter"

.field static final UPDATE_REMAINGSIZE:I = 0x1


# instance fields
.field aidTabtotalSize:I

.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/nfc/DemoBean;",
            ">;"
        }
    .end annotation
.end field

.field private isCheckMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mCommittedSize:I

.field private mH:Landroid/os/Handler;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcService:Lcom/android/nfc/NfcService;

.field private mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

.field mRemainingSize:I

.field final onHostApp:Ljava/lang/String;

.field final onSimApp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/nfc/DemoBean;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/DemoBean;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    const-string v0, "HCE app"

    iput-object v0, p0, Lcom/android/nfc/DemoAdapter;->onHostApp:Ljava/lang/String;

    .line 39
    const-string v0, "SIM app"

    iput-object v0, p0, Lcom/android/nfc/DemoAdapter;->onSimApp:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/DemoAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/android/nfc/DemoAdapter;->datas:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/DemoAdapter;->isCheckMap:Ljava/util/Map;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/DemoAdapter;->mCommittedSize:I

    .line 49
    const/16 v1, 0x294

    iput v1, p0, Lcom/android/nfc/DemoAdapter;->mRemainingSize:I

    .line 50
    iput v0, p0, Lcom/android/nfc/DemoAdapter;->aidTabtotalSize:I

    .line 52
    iput-object p2, p0, Lcom/android/nfc/DemoAdapter;->datas:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/android/nfc/DemoAdapter;->context:Landroid/content/Context;

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/nfc/DemoAdapter;->configCheckMap(Z)V

    .line 55
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/DemoAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 56
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/DemoAdapter;->mNfcService:Lcom/android/nfc/NfcService;

    .line 57
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 58
    const-string v0, "DemoAdapter"

    const-string v1, " Nfc is not avaliable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/DemoAdapter;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 61
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    if-nez v0, :cond_1

    .line 62
    const-string v0, "DemoAdapter"

    const-string v1, " NxpNfc is not avaliable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    new-instance v0, Lcom/android/nfc/DemoAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/DemoAdapter$1;-><init>(Lcom/android/nfc/DemoAdapter;)V

    iput-object v0, p0, Lcom/android/nfc/DemoAdapter;->mH:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/android/nfc/DemoAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/DemoAdapter$2;-><init>(Lcom/android/nfc/DemoAdapter;)V

    .line 113
    invoke-virtual {v0}, Lcom/android/nfc/DemoAdapter$2;->start()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/DemoAdapter;)Lcom/android/nfc/NfcService;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/DemoAdapter;

    .line 35
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->mNfcService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/DemoAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/DemoAdapter;

    .line 35
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/DemoAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/DemoAdapter;

    .line 35
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/DemoAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/DemoAdapter;

    .line 35
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->datas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/nfc/DemoAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/DemoAdapter;

    .line 35
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    return-object v0
.end method


# virtual methods
.method public configCheckMap(Z)V
    .locals 4
    .param p1, "bool"    # Z

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/DemoAdapter;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/nfc/DemoAdapter;->isCheckMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getCheckMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->isCheckMap:Ljava/util/Map;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/nfc/DemoBean;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->datas:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 128
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 133
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, "layout":Landroid/view/ViewGroup;
    const-string v4, "DemoAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "baojian getView, position is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    if-nez p2, :cond_0

    .line 141
    iget-object v4, v0, Lcom/android/nfc/DemoAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030004

    const/4 v6, 0x0

    move-object/from16 v7, p3

    invoke-virtual {v4, v5, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_0

    .line 143
    :cond_0
    move-object/from16 v7, p3

    move-object/from16 v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    .line 145
    :goto_0
    iget-object v4, v0, Lcom/android/nfc/DemoAdapter;->datas:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/DemoBean;

    .line 147
    .local v4, "bean":Lcom/android/nfc/DemoBean;
    const v5, 0x7f090007

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 148
    .local v5, "ivIcon":Landroid/widget/ImageView;
    invoke-virtual {v4}, Lcom/android/nfc/DemoBean;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v8, v0, Lcom/android/nfc/DemoAdapter;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    const v6, 0x7f09000a

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 150
    .local v6, "tvTitle":Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/android/nfc/DemoBean;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v8, 0x7f090008

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 153
    .local v8, "tvOnhost":Landroid/widget/TextView;
    const v9, 0x7f09000b

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 154
    .local v9, "cbCheck":Landroid/widget/CheckBox;
    const/4 v10, 0x0

    .line 155
    .local v10, "mServiceState":Z
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v11

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    invoke-virtual {v4}, Lcom/android/nfc/DemoBean;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/nfc/NfcService;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-result-object v11

    .line 156
    .local v11, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const-string v12, "other"

    invoke-virtual {v11, v12}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAidCacheSize(Ljava/lang/String;)I

    move-result v12

    .line 157
    .local v12, "mAidSize":I
    const-string v13, "other"

    invoke-virtual {v11, v13}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->geTotalAidNum(Ljava/lang/String;)I

    move-result v13

    mul-int/lit8 v13, v13, 0x4

    .line 158
    .local v13, "mEntrySize":I
    add-int v14, v12, v13

    .line 159
    .local v14, "allSize":I
    const v15, 0x7f090009

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 160
    .local v15, "tvSpace":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v16, v4

    const-string v4, "Bytes taken by this service."

    .end local v4    # "bean":Lcom/android/nfc/DemoBean;
    .local v16, "bean":Lcom/android/nfc/DemoBean;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v11}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->isOnHost()Z

    move-result v2

    .line 162
    .local v2, "onHost":Z
    if-eqz v2, :cond_1

    .line 163
    const-string v4, "HCE app"

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 166
    :cond_1
    const-string v4, "SIM app"

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :goto_1
    const-string v4, "DemoAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v10

    const-string v10, "serviceInfo is "

    .end local v10    # "mServiceState":Z
    .local v17, "mServiceState":Z
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "onHost is "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-eqz v11, :cond_2

    .line 170
    const-string v4, "DemoAdapter"

    const-string v7, "baojian serviceinfo is not null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v4, "other"

    invoke-virtual {v11, v4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->isServiceEnabled(Ljava/lang/String;)Z

    move-result v10

    .end local v17    # "mServiceState":Z
    .restart local v10    # "mServiceState":Z
    goto :goto_2

    .line 174
    .end local v10    # "mServiceState":Z
    .restart local v17    # "mServiceState":Z
    :cond_2
    const-string v4, "DemoAdapter"

    const-string v7, "baojian serviceinfo is null"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    move/from16 v10, v17

    .end local v17    # "mServiceState":Z
    .restart local v10    # "mServiceState":Z
    :goto_2
    const/4 v4, 0x1

    if-ne v10, v4, :cond_3

    .line 177
    const-string v4, "DemoAdapter"

    const-string v7, "baojian mServiceState is true"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 180
    :cond_3
    const-string v4, "DemoAdapter"

    const-string v7, "baojian mServiceState is false"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_3
    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    new-instance v4, Lcom/android/nfc/DemoAdapter$3;

    invoke-direct {v4, v0, v1}, Lcom/android/nfc/DemoAdapter$3;-><init>(Lcom/android/nfc/DemoAdapter;I)V

    invoke-virtual {v9, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 210
    new-instance v4, Lcom/android/nfc/DemoAdapter$ViewHolder;

    invoke-direct {v4}, Lcom/android/nfc/DemoAdapter$ViewHolder;-><init>()V

    .line 211
    .local v4, "holder":Lcom/android/nfc/DemoAdapter$ViewHolder;
    iput-object v9, v4, Lcom/android/nfc/DemoAdapter$ViewHolder;->cbCheck:Landroid/widget/CheckBox;

    .line 212
    iput-object v6, v4, Lcom/android/nfc/DemoAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 213
    iput-object v5, v4, Lcom/android/nfc/DemoAdapter$ViewHolder;->ivIcon:Landroid/widget/ImageView;

    .line 214
    iput-object v15, v4, Lcom/android/nfc/DemoAdapter$ViewHolder;->tvSpace:Landroid/widget/TextView;

    .line 215
    iput-object v8, v4, Lcom/android/nfc/DemoAdapter$ViewHolder;->tvOnhost:Landroid/widget/TextView;

    .line 216
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 217
    return-object v3
.end method
