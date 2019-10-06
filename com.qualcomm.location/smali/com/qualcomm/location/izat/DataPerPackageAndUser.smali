.class public Lcom/qualcomm/location/izat/DataPerPackageAndUser;
.super Ljava/lang/Object;
.source "DataPerPackageAndUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;,
        Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GenericData:",
        "Lcom/qualcomm/location/izat/CallbackData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DataPerPackageAndUser"

.field private static final VERBOSE:Z

.field private static final sDataLock:Ljava/lang/Object;


# instance fields
.field private mCallbackDataPerPackageAllUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TGenericData;>;>;"
        }
    .end annotation
.end field

.field private mCallbackDataPerPackageCurrentUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TGenericData;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:Ljava/lang/String;

.field private mPackagenamePerPid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUseCommonPackage:Z

.field private mUserChangeListener:Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string v0, "DataPerPackageAndUser"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->VERBOSE:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->sDataLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userChangeListener"    # Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;

    .line 51
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mUseCommonPackage:Z

    .line 52
    iput-object p1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mUserChangeListener:Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mPackagenamePerPid:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageCurrentUser:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageAllUsers:Ljava/util/Map;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getUserName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCurrentUser:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageAllUsers:Ljava/util/Map;

    iget-object v1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCurrentUser:Ljava/lang/String;

    iget-object v2, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageCurrentUser:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;-><init>(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)V

    .line 63
    .local v0, "userSwitchReceiver":Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>.UserSwitchReceiver;"
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    .end local v0    # "userSwitchReceiver":Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserSwitchReceiver;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>.UserSwitchReceiver;"
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 31
    sget-boolean v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$100(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    .line 31
    iget-object v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCurrentUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/location/izat/DataPerPackageAndUser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/DataPerPackageAndUser;
    .param p1, "x1"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCurrentUser:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 31
    sget-object v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->sDataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    .line 31
    iget-object v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageAllUsers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    .line 31
    iget-object v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageCurrentUser:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Lcom/qualcomm/location/izat/DataPerPackageAndUser;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/DataPerPackageAndUser;
    .param p1, "x1"    # Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageCurrentUser:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Lcom/qualcomm/location/izat/DataPerPackageAndUser;)Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    .line 31
    iget-object v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mUserChangeListener:Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;

    return-object v0
.end method

.method private getCallbackDataPerPackageCurrentUser()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TGenericData;>;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getUserName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "userName":Ljava/lang/String;
    sget-boolean v1, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 205
    const-string v1, "DataPerPackageAndUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Getting data for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageAllUsers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    return-object v1
.end method

.method private getPackageNameFromPid(I)Ljava/lang/String;
    .locals 8
    .param p1, "pid"    # I

    .line 143
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    iget-object v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mPackagenamePerPid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 145
    iget-object v1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 147
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 148
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 149
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 150
    .local v4, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    .line 152
    iget-object v3, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mPackagenamePerPid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v3, v3, v7

    return-object v3

    .line 155
    .end local v4    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 158
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    return-object v0
.end method

.method private getUserName(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .param p1, "notifyIntent"    # Landroid/app/PendingIntent;

    .line 162
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    const/4 v0, 0x0

    .line 163
    .local v0, "userHandle":Landroid/os/UserHandle;
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 169
    :goto_0
    invoke-virtual {v0}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAllData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TGenericData;>;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageCurrentUser:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllDataPerPackageName(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TGenericData;>;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "callbackDataList":Ljava/util/List;, "Ljava/util/List<TGenericData;>;"
    iget-object v1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageAllUsers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 116
    .local v2, "callbackDataPerPackage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TGenericData;>;"
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/location/izat/CallbackData;

    .line 117
    .local v3, "clData":Lcom/qualcomm/location/izat/CallbackData;, "TGenericData;"
    if-eqz v3, :cond_0

    .line 118
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v2    # "callbackDataPerPackage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TGenericData;>;"
    .end local v3    # "clData":Lcom/qualcomm/location/izat/CallbackData;, "TGenericData;"
    :cond_0
    goto :goto_0

    .line 122
    :cond_1
    return-object v0
.end method

.method public getData()Lcom/qualcomm/location/izat/CallbackData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TGenericData;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    invoke-direct {p0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getCallbackDataPerPackageCurrentUser()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/izat/CallbackData;

    return-object v0
.end method

.method public getDataByCallback(Landroid/os/IInterface;)Lcom/qualcomm/location/izat/CallbackData;
    .locals 4
    .param p1, "callback"    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IInterface;",
            ")TGenericData;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    const/4 v0, 0x0

    .line 91
    .local v0, "clData":Lcom/qualcomm/location/izat/CallbackData;, "TGenericData;"
    iget-object v1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageCurrentUser:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 92
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TGenericData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/location/izat/CallbackData;

    iget-object v3, v3, Lcom/qualcomm/location/izat/CallbackData;->mCallback:Landroid/os/IInterface;

    if-ne v3, p1, :cond_0

    .line 93
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/qualcomm/location/izat/CallbackData;

    .line 94
    goto :goto_1

    .line 96
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TGenericData;>;"
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 4
    .param p1, "notifyIntent"    # Landroid/app/PendingIntent;

    .line 126
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    const-string v0, "COMMON"

    .line 128
    .local v0, "callingPackage":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mUseCommonPackage:Z

    if-nez v1, :cond_1

    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageNameFromPid(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->VERBOSE:Z

    if-eqz v1, :cond_2

    .line 136
    const-string v1, "DataPerPackageAndUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callingPackage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getUserName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_2
    return-object v0
.end method

.method public removeData(Lcom/qualcomm/location/izat/CallbackData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericData;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    .local p1, "callbackData":Lcom/qualcomm/location/izat/CallbackData;, "TGenericData;"
    sget-object v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageCurrentUser:Ljava/util/Map;

    iget-object v2, p1, Lcom/qualcomm/location/izat/CallbackData;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setData(Lcom/qualcomm/location/izat/CallbackData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericData;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    .local p1, "callbackData":Lcom/qualcomm/location/izat/CallbackData;, "TGenericData;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->setData(Lcom/qualcomm/location/izat/CallbackData;Landroid/app/PendingIntent;)V

    .line 74
    return-void
.end method

.method public setData(Lcom/qualcomm/location/izat/CallbackData;Landroid/app/PendingIntent;)V
    .locals 3
    .param p2, "notifyIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGenericData;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    .local p1, "callbackData":Lcom/qualcomm/location/izat/CallbackData;, "TGenericData;"
    sget-object v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->sDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/qualcomm/location/izat/CallbackData;->mPackageName:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mCallbackDataPerPackageCurrentUser:Ljava/util/Map;

    iget-object v2, p1, Lcom/qualcomm/location/izat/CallbackData;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public useCommonPackage()V
    .locals 1

    .line 69
    .local p0, "this":Lcom/qualcomm/location/izat/DataPerPackageAndUser;, "Lcom/qualcomm/location/izat/DataPerPackageAndUser<TGenericData;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->mUseCommonPackage:Z

    .line 70
    return-void
.end method
