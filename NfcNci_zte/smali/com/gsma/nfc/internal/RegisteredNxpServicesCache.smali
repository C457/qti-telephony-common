.class public Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;
.super Ljava/lang/Object;
.source "RegisteredNxpServicesCache.java"


# static fields
.field static final TAG:Ljava/lang/String; = "RegisteredNxpServicesCache"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field dataDir:Ljava/io/File;

.field final mApduBanner:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mApduServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mDynamicApduServiceFile:Landroid/util/AtomicFile;

.field final mLock:Ljava/lang/Object;

.field private mRegisteredServicesCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mLock:Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    .line 79
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mDynamicApduServiceFile:Landroid/util/AtomicFile;

    .line 81
    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->dataDir:Ljava/io/File;

    .line 84
    iput-object p1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registeredServicesCache"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mLock:Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    .line 79
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mDynamicApduServiceFile:Landroid/util/AtomicFile;

    .line 81
    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->dataDir:Ljava/io/File;

    .line 89
    iput-object p1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mRegisteredServicesCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 92
    iget-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->dataDir:Ljava/io/File;

    .line 93
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->dataDir:Ljava/io/File;

    const-string v3, "dynamic_apduservice.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mDynamicApduServiceFile:Landroid/util/AtomicFile;

    .line 94
    return-void
.end method

.method private deleteBitMapfromFile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "drawablePath"    # Ljava/lang/String;

    .line 129
    const-string v0, "RegisteredNxpServicesCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " delete Path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "deleted":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-string v2, "RegisteredNxpServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " delete Path found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 138
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, 0x1

    .line 143
    :goto_0
    const-string v1, "RegisteredNxpServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v0
.end method

.method private readDrawableFromBitMap(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "drawablePath"    # Ljava/lang/String;

    .line 115
    const-string v0, "RegisteredNxpServicesCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " input Path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "filePath":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 119
    .local v1, "fi":Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 120
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v3, "DrawableResource":Landroid/graphics/drawable/Drawable;
    return-object v3

    .line 122
    .end local v1    # "fi":Ljava/io/FileInputStream;
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "DrawableResource":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "RegisteredNxpServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " input Path Not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v2, 0x0

    return-object v2
.end method

.method private writeDrawableAsBitMap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "path"    # Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->dataDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    .local v0, "file":Ljava/io/File;
    const-string v1, "RegisteredNxpServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " input Path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const-string v2, "RegisteredNxpServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawablePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v2, "outStream":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 105
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 106
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 108
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "RegisteredNxpServicesCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " input Path Not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public deleteApduService(IILjava/lang/String;Landroid/nfc/cardemulation/NxpApduServiceInfo;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "apduService"    # Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 211
    iget-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 213
    invoke-virtual {p0}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->writeDynamicApduService()Z

    .line 214
    iget-object v1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->deleteBitMapfromFile(Ljava/lang/String;)Z

    .line 216
    iget-object v1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mRegisteredServicesCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 219
    monitor-exit v0

    .line 220
    const/4 v0, 0x1

    return v0

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getApduServices(IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "apduInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    iget-object v1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    .line 229
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    :cond_0
    goto :goto_0

    .line 233
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mRegisteredServicesCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getAllServices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    .local v1, "staticServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 235
    .local v3, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v3    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_2
    goto :goto_1

    .line 239
    :cond_3
    return-object v0
.end method

.method public getApduservicesList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    iget-object v1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 175
    .local v2, "value":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v2    # "value":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    goto :goto_0

    .line 177
    :cond_0
    return-object v0
.end method

.method public getApduservicesMaps()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    return-object v0
.end method

.method public getInstalledStaticServices()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mRegisteredServicesCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getAllStaticHashServices()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "uninstalledpackageName"    # Ljava/lang/String;

    .line 191
    if-eqz p1, :cond_1

    .line 192
    const-string v0, "RegisteredNxpServicesCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstall packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 197
    const-string v2, "RegisteredNxpServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->deleteBitMapfromFile(Ljava/lang/String;)Z

    .line 200
    iget-object v2, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    :cond_0
    goto :goto_0

    .line 205
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;>;"
    :cond_1
    const-string v0, "RegisteredNxpServicesCache"

    const-string v1, "uninstall packageName is Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    return-void
.end method

.method public readDynamicApduService()V
    .locals 49

    .line 284
    move-object/from16 v1, p0

    const/4 v0, 0x0

    move-object v2, v0

    .line 286
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, v1, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mDynamicApduServiceFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    const-string v0, "RegisteredNxpServicesCache"

    const-string v3, "Dynamic APDU Service file does not exist."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    if-eqz v2, :cond_0

    .line 401
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 403
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    :try_start_2
    iget-object v3, v1, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mDynamicApduServiceFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 291
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 292
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 293
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 295
    .local v4, "eventType":I
    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_2

    .line 297
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v4, v5

    goto :goto_1

    .line 299
    :cond_2
    const/4 v7, 0x0

    .line 300
    .local v7, "inService":Z
    const/4 v8, 0x0

    .line 301
    .local v8, "currentComponent":Landroid/content/ComponentName;
    const/4 v9, 0x0

    .line 302
    .local v9, "drawbalePath":Ljava/lang/String;
    const/4 v10, 0x0

    .line 303
    .local v10, "description":Ljava/lang/String;
    const/4 v11, 0x0

    .line 304
    .local v11, "modifiable":Z
    const/4 v12, 0x0

    .line 305
    .local v12, "seId":I
    const/4 v13, 0x0

    .line 306
    .local v13, "userId":I
    const/4 v14, 0x0

    .line 307
    .local v14, "bannerId":I
    const/4 v15, 0x0

    .line 308
    .local v15, "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    const/16 v16, 0x0

    .line 309
    .local v16, "DrawableResource":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 310
    .local v17, "apduService":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const/16 v18, 0x0

    .line 311
    .local v18, "bitmap":Landroid/graphics/Bitmap;
    const/16 v19, 0x0

    .line 312
    .local v19, "byteArrayBanner":[B
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v0, "dynamicNxpAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpAidGroup;>;"
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v35, v21

    .line 315
    .local v35, "tagName":Ljava/lang/String;
    const-string v6, "apduservices"

    move-object/from16 v5, v35

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .end local v35    # "tagName":Ljava/lang/String;
    .local v5, "tagName":Ljava/lang/String;
    if-eqz v6, :cond_c

    .line 316
    :goto_2
    const/4 v6, 0x1

    if-eq v4, v6, :cond_c

    .line 317
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v5, v21

    .line 318
    const/4 v6, 0x2

    if-ne v4, v6, :cond_a

    .line 319
    const-string v6, "service"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v36, v7

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 320
    .end local v7    # "inService":Z
    .local v36, "inService":Z
    const-string v6, "component"

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "compString":Ljava/lang/String;
    const-string v7, "uid"

    move-object/from16 v37, v9

    const/4 v9, 0x0

    invoke-interface {v3, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .end local v9    # "drawbalePath":Ljava/lang/String;
    .local v37, "drawbalePath":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v13, v7

    .line 322
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    move-object v8, v7

    .line 323
    const-string v7, "description"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    .line 324
    const-string v7, "bannerId"

    invoke-interface {v3, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v14, v7

    .line 325
    const-string v7, "modifiable"

    invoke-interface {v3, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 326
    .local v7, "isModifiable":Ljava/lang/String;
    const-string v9, "drawableResourcepath"

    move-object/from16 v38, v6

    const/4 v6, 0x0

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 327
    .end local v6    # "compString":Ljava/lang/String;
    .end local v37    # "drawbalePath":Ljava/lang/String;
    .restart local v9    # "drawbalePath":Ljava/lang/String;
    .local v38, "compString":Ljava/lang/String;
    const-string v6, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 328
    const/4 v6, 0x1

    .line 333
    .end local v11    # "modifiable":Z
    .local v6, "modifiable":Z
    :goto_3
    move v11, v6

    goto :goto_4

    .line 330
    .end local v6    # "modifiable":Z
    .restart local v11    # "modifiable":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 333
    :goto_4
    const-string v6, "seId"

    move-object/from16 v39, v7

    const/4 v7, 0x0

    invoke-interface {v3, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 334
    .end local v7    # "isModifiable":Ljava/lang/String;
    .local v6, "seIdString":Ljava/lang/String;
    .local v39, "isModifiable":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v12, v20

    .line 335
    const/16 v20, 0x1

    .line 336
    .end local v36    # "inService":Z
    .local v20, "inService":Z
    const-string v7, "RegisteredNxpServicesCache"

    move-object/from16 v40, v6

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6    # "seIdString":Ljava/lang/String;
    .local v40, "seIdString":Ljava/lang/String;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v10

    const-string v10, "readDynamicApduService "

    .end local v10    # "description":Ljava/lang/String;
    .local v41, "description":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-gtz v14, :cond_5

    .line 338
    const/4 v14, -0x1

    .line 339
    if-eqz v9, :cond_5

    .line 341
    invoke-direct {v1, v9}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->readDrawableFromBitMap(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v16, v6

    .line 342
    move-object/from16 v6, v16

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 343
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 344
    .local v7, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v42, v11

    const/16 v11, 0x64

    .end local v11    # "modifiable":Z
    .local v42, "modifiable":Z
    invoke-virtual {v6, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 345
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    move-object/from16 v19, v10

    .line 346
    iget-object v10, v1, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 347
    iget-object v10, v1, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v7    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v38    # "compString":Ljava/lang/String;
    .end local v39    # "isModifiable":Ljava/lang/String;
    .end local v40    # "seIdString":Ljava/lang/String;
    :cond_4
    move-object/from16 v18, v6

    goto :goto_6

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v42    # "modifiable":Z
    .restart local v11    # "modifiable":Z
    .restart local v18    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    move/from16 v42, v11

    .end local v11    # "modifiable":Z
    .restart local v42    # "modifiable":Z
    goto :goto_6

    .end local v20    # "inService":Z
    .end local v41    # "description":Ljava/lang/String;
    .end local v42    # "modifiable":Z
    .restart local v10    # "description":Ljava/lang/String;
    .restart local v11    # "modifiable":Z
    .restart local v36    # "inService":Z
    :cond_6
    move-object/from16 v37, v9

    .end local v9    # "drawbalePath":Ljava/lang/String;
    .restart local v37    # "drawbalePath":Ljava/lang/String;
    goto :goto_5

    .end local v36    # "inService":Z
    .end local v37    # "drawbalePath":Ljava/lang/String;
    .local v7, "inService":Z
    .restart local v9    # "drawbalePath":Ljava/lang/String;
    :cond_7
    move/from16 v36, v7

    move-object/from16 v37, v9

    .end local v7    # "inService":Z
    .end local v9    # "drawbalePath":Ljava/lang/String;
    .restart local v36    # "inService":Z
    .restart local v37    # "drawbalePath":Ljava/lang/String;
    :goto_5
    move-object/from16 v41, v10

    move/from16 v42, v11

    move/from16 v20, v36

    move-object/from16 v9, v37

    .end local v10    # "description":Ljava/lang/String;
    .end local v11    # "modifiable":Z
    .end local v36    # "inService":Z
    .end local v37    # "drawbalePath":Ljava/lang/String;
    .restart local v9    # "drawbalePath":Ljava/lang/String;
    .restart local v20    # "inService":Z
    .restart local v41    # "description":Ljava/lang/String;
    .restart local v42    # "modifiable":Z
    :goto_6
    const-string v6, "aid-group"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    if-eqz v20, :cond_9

    .line 354
    invoke-static {v3}, Landroid/nfc/cardemulation/NxpAidGroup;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/NxpAidGroup;

    move-result-object v6

    .line 355
    .local v6, "group":Landroid/nfc/cardemulation/NxpAidGroup;
    if-eqz v6, :cond_8

    .line 356
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 358
    :cond_8
    const-string v7, "RegisteredNxpServicesCache"

    const-string v10, "Could not parse AID group."

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v6    # "group":Landroid/nfc/cardemulation/NxpAidGroup;
    :goto_7
    nop

    .line 392
    :cond_9
    move/from16 v43, v4

    move-object/from16 v44, v5

    move/from16 v7, v20

    move-object/from16 v10, v41

    move/from16 v11, v42

    goto/16 :goto_8

    .line 362
    .end local v20    # "inService":Z
    .end local v41    # "description":Ljava/lang/String;
    .end local v42    # "modifiable":Z
    .restart local v7    # "inService":Z
    .restart local v10    # "description":Ljava/lang/String;
    .restart local v11    # "modifiable":Z
    :cond_a
    move/from16 v36, v7

    move-object/from16 v37, v9

    .end local v7    # "inService":Z
    .end local v9    # "drawbalePath":Ljava/lang/String;
    .restart local v36    # "inService":Z
    .restart local v37    # "drawbalePath":Ljava/lang/String;
    const/4 v6, 0x3

    if-ne v4, v6, :cond_b

    .line 363
    const-string v6, "service"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 364
    const/4 v6, -0x1

    .line 365
    .local v6, "powerstate":I
    const/4 v7, 0x0

    .line 366
    .local v7, "onHost":Z
    const/4 v9, 0x0

    .line 368
    .local v9, "requiresUnlock":Z
    move/from16 v43, v4

    new-instance v4, Landroid/content/pm/ResolveInfo;

    .end local v4    # "eventType":I
    .local v43, "eventType":I
    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 369
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v44, v5

    new-instance v5, Landroid/content/pm/ServiceInfo;

    .end local v5    # "tagName":Ljava/lang/String;
    .local v44, "tagName":Ljava/lang/String;
    invoke-direct {v5}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 370
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v45, v15

    new-instance v15, Landroid/content/pm/ApplicationInfo;

    .end local v15    # "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    .local v45, "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    invoke-direct {v15}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v15, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 371
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 372
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 373
    new-instance v5, Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;

    invoke-direct {v5, v12, v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;-><init>(II)V

    move-object/from16 v31, v5

    .line 374
    .local v31, "mEseInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;
    const/4 v5, 0x0

    .line 375
    .local v5, "staticNxpAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpAidGroup;>;"
    new-instance v15, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    const-string v30, "Fixme: NXP:<Activity Name>"

    const/16 v32, 0x0

    move-object/from16 v21, v15

    move-object/from16 v22, v4

    move/from16 v23, v7

    move-object/from16 v24, v10

    move-object/from16 v25, v5

    move-object/from16 v26, v0

    move/from16 v27, v9

    move/from16 v28, v14

    move/from16 v29, v13

    move-object/from16 v33, v19

    move/from16 v34, v11

    invoke-direct/range {v21 .. v34}, Landroid/nfc/cardemulation/NxpApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;Ljava/util/ArrayList;[BZ)V

    .line 377
    .end local v17    # "apduService":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .local v15, "apduService":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    move-object/from16 v46, v4

    iget-object v4, v1, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .local v46, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v4, "RegisteredNxpServicesCache"

    move-object/from16 v47, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "staticNxpAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpAidGroup;>;"
    .local v47, "staticNxpAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpAidGroup;>;"
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v48, v6

    const-string v6, "mApduServices size= "

    .end local v6    # "powerstate":I
    .local v48, "powerstate":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    const/4 v4, 0x0

    .line 381
    .end local v36    # "inService":Z
    .local v4, "inService":Z
    const/4 v5, 0x0

    .line 382
    .end local v8    # "currentComponent":Landroid/content/ComponentName;
    .local v5, "currentComponent":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 383
    .end local v37    # "drawbalePath":Ljava/lang/String;
    .local v6, "drawbalePath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 384
    .end local v10    # "description":Ljava/lang/String;
    .local v8, "description":Ljava/lang/String;
    const/4 v10, 0x0

    .line 385
    .end local v11    # "modifiable":Z
    .local v10, "modifiable":Z
    const/4 v11, 0x0

    .line 386
    .end local v12    # "seId":I
    .local v11, "seId":I
    const/4 v12, 0x0

    .line 387
    .end local v13    # "userId":I
    .local v12, "userId":I
    const/4 v13, 0x0

    .line 388
    .end local v45    # "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    .local v13, "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    const/16 v16, 0x0

    .line 389
    const/4 v7, 0x0

    .line 392
    .end local v9    # "requiresUnlock":Z
    .end local v15    # "apduService":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v31    # "mEseInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;
    .end local v46    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v47    # "staticNxpAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpAidGroup;>;"
    .end local v48    # "powerstate":I
    .local v7, "apduService":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    move-object v9, v6

    move-object/from16 v17, v7

    move-object v15, v13

    move v7, v4

    move v13, v12

    move v12, v11

    move v11, v10

    move-object v10, v8

    move-object v8, v5

    goto :goto_8

    .end local v6    # "drawbalePath":Ljava/lang/String;
    .end local v7    # "apduService":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v43    # "eventType":I
    .end local v44    # "tagName":Ljava/lang/String;
    .local v4, "eventType":I
    .local v5, "tagName":Ljava/lang/String;
    .local v8, "currentComponent":Landroid/content/ComponentName;
    .local v10, "description":Ljava/lang/String;
    .local v11, "modifiable":Z
    .local v12, "seId":I
    .local v13, "userId":I
    .local v15, "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    .restart local v17    # "apduService":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .restart local v36    # "inService":Z
    .restart local v37    # "drawbalePath":Ljava/lang/String;
    :cond_b
    move/from16 v43, v4

    move-object/from16 v44, v5

    move-object/from16 v45, v15

    .end local v4    # "eventType":I
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v15    # "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    .restart local v43    # "eventType":I
    .restart local v44    # "tagName":Ljava/lang/String;
    .restart local v45    # "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    move/from16 v7, v36

    move-object/from16 v9, v37

    move-object/from16 v15, v45

    .end local v36    # "inService":Z
    .end local v37    # "drawbalePath":Ljava/lang/String;
    .end local v45    # "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    .local v7, "inService":Z
    .local v9, "drawbalePath":Ljava/lang/String;
    .restart local v15    # "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    :goto_8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    .end local v43    # "eventType":I
    .restart local v4    # "eventType":I
    move-object/from16 v5, v44

    goto/16 :goto_2

    .line 399
    .end local v0    # "dynamicNxpAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpAidGroup;>;"
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "eventType":I
    .end local v7    # "inService":Z
    .end local v8    # "currentComponent":Landroid/content/ComponentName;
    .end local v9    # "drawbalePath":Ljava/lang/String;
    .end local v10    # "description":Ljava/lang/String;
    .end local v11    # "modifiable":Z
    .end local v12    # "seId":I
    .end local v13    # "userId":I
    .end local v14    # "bannerId":I
    .end local v15    # "nxpAidGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    .end local v16    # "DrawableResource":Landroid/graphics/drawable/Drawable;
    .end local v17    # "apduService":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v18    # "bitmap":Landroid/graphics/Bitmap;
    .end local v19    # "byteArrayBanner":[B
    .end local v44    # "tagName":Ljava/lang/String;
    :cond_c
    if-eqz v2, :cond_d

    .line 401
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 403
    :goto_9
    goto :goto_a

    .line 402
    :catch_1
    move-exception v0

    goto :goto_9

    .line 399
    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_b

    .line 395
    :catch_2
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "RegisteredNxpServicesCache"

    const-string v4, "Could not parse dynamic APDU Service file, trashing."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    iget-object v3, v1, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mDynamicApduServiceFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_d

    .line 401
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_9

    .line 406
    :cond_d
    :goto_a
    const-string v0, "RegisteredNxpServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readDynamicApduService End:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void

    .line 399
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :goto_b
    if-eqz v3, :cond_e

    .line 401
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 403
    goto :goto_c

    .line 402
    :catch_3
    move-exception v0

    .line 403
    :cond_e
    :goto_c
    throw v2
.end method

.method public registerApduService(IILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/NxpApduServiceInfo;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "apduService"    # Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 148
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, "componentName":Landroid/content/ComponentName;
    const-string v1, "RegisteredNxpServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerApduService - incoming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 151
    .local v1, "cur":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    if-eqz v1, :cond_0

    .line 152
    const-string v2, "RegisteredNxpServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerApduService - cur :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v2, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 157
    if-eqz v1, :cond_1

    .line 158
    const-string v2, "RegisteredNxpServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerApduService - cur - after update :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->writeDynamicApduService()Z

    move-result v2

    .line 162
    .local v2, "status":Z
    if-eqz v2, :cond_2

    .line 163
    iget-object v3, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mRegisteredServicesCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 164
    const/4 v3, 0x1

    return v3

    .line 166
    :cond_2
    const-string v3, "RegisteredNxpServicesCache"

    const-string v4, "Commit Failed due to writing failed to write in to the file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v3, 0x0

    return v3
.end method

.method public writeDynamicApduService()Z
    .locals 9

    .line 243
    const/4 v0, 0x0

    move-object v1, v0

    .line 245
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mDynamicApduServiceFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 246
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 247
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v3, "utf-8"

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 248
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 249
    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 250
    const-string v4, "apduservices"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    iget-object v4, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 253
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 254
    .local v5, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    if-eqz v5, :cond_2

    .line 255
    const-string v6, "service"

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    const-string v6, "component"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getBannerId()I

    move-result v6

    if-gtz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getBitmapBanner()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 258
    const-string v6, "RegisteredNxpServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "writeDynamicApduService "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getBannerId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, "path":Ljava/lang/String;
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getBitmapBanner()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v7, v6}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->writeDrawableAsBitMap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 261
    iget-object v7, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 262
    iget-object v7, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mApduBanner:Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    const-string v7, "drawableResourcepath"

    invoke-interface {v2, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 266
    .end local v6    # "path":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v6, v2}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 267
    const-string v6, "service"

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    .end local v5    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    :cond_2
    goto/16 :goto_0

    .line 270
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;>;"
    :cond_3
    const-string v4, "apduservices"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 272
    iget-object v0, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mDynamicApduServiceFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return v3

    .line 274
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RegisteredNxpServicesCache"

    const-string v3, "Error writing dynamic APDU Service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    if-eqz v1, :cond_4

    .line 277
    iget-object v2, p0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->mDynamicApduServiceFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 279
    :cond_4
    const/4 v2, 0x0

    return v2
.end method
