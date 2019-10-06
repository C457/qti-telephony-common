.class public Lcom/android/nfc/DemoBean;
.super Ljava/lang/Object;
.source "DemoBean.java"


# instance fields
.field private appInfo:Landroid/content/pm/ApplicationInfo;

.field private canRemove:Z

.field private comName:Landroid/content/ComponentName;

.field private mFullServiceName:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/DemoBean;->canRemove:Z

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/DemoBean;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    iput-object v0, p0, Lcom/android/nfc/DemoBean;->comName:Landroid/content/ComponentName;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "comName"    # Landroid/content/ComponentName;
    .param p4, "mFullServiceName"    # Ljava/lang/String;
    .param p5, "canRemove"    # Z

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/DemoBean;->canRemove:Z

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/DemoBean;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 9
    iput-object v0, p0, Lcom/android/nfc/DemoBean;->comName:Landroid/content/ComponentName;

    .line 41
    iput-object p1, p0, Lcom/android/nfc/DemoBean;->title:Ljava/lang/String;

    .line 42
    iput-boolean p5, p0, Lcom/android/nfc/DemoBean;->canRemove:Z

    .line 43
    iput-object p2, p0, Lcom/android/nfc/DemoBean;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 44
    iput-object p3, p0, Lcom/android/nfc/DemoBean;->comName:Landroid/content/ComponentName;

    .line 45
    iput-object p4, p0, Lcom/android/nfc/DemoBean;->mFullServiceName:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/nfc/DemoBean;->appInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/nfc/DemoBean;->comName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFullServiceName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/nfc/DemoBean;->mFullServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/nfc/DemoBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCanRemove()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/android/nfc/DemoBean;->canRemove:Z

    return v0
.end method

.method public setCanRemove(Z)V
    .locals 0
    .param p1, "canRemove"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/android/nfc/DemoBean;->canRemove:Z

    .line 26
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/android/nfc/DemoBean;->title:Ljava/lang/String;

    .line 18
    return-void
.end method
