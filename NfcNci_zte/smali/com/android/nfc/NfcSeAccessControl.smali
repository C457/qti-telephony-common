.class public Lcom/android/nfc/NfcSeAccessControl;
.super Ljava/lang/Object;
.source "NfcSeAccessControl.java"


# static fields
.field static final DBG:Z = true

.field public static final NFCSE_ACCESS_PATH:Ljava/lang/String; = "/etc/nfcse_access.xml"

.field static final TAG:Ljava/lang/String; = "NfcSeAccess"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDebugPrintSignature:Z

.field final mNfcSeAccess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/pm/Signature;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/nfc/NfcSeAccessControl;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    .line 69
    invoke-virtual {p0}, Lcom/android/nfc/NfcSeAccessControl;->parseNfcSeAccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mDebugPrintSignature:Z

    .line 70
    return-void
.end method


# virtual methods
.method public check(ILjava/lang/String;)Z
    .locals 9
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 78
    const-string v0, "NfcSeAccess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-enter p0

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "access":Z
    const/4 v1, 0x0

    .line 84
    .local v1, "packageFound":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcSeAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 85
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "pkgs":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 87
    .local v7, "uidPkg":Ljava/lang/String;
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 88
    const/4 v1, 0x1

    .line 90
    iget-object v4, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 91
    .local v4, "cached":Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    monitor-exit p0

    return v5

    .line 96
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfcSeAccessControl;->checkPackageNfcSeAccess(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 97
    const/4 v0, 0x1

    goto :goto_1

    .line 86
    .end local v4    # "cached":Ljava/lang/Boolean;
    .end local v7    # "uidPkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 105
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 106
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "pkgs1":[Ljava/lang/String;
    array-length v6, v4

    :goto_2
    if-ge v5, v6, :cond_4

    aget-object v7, v4, v5

    .line 108
    .restart local v7    # "uidPkg":Ljava/lang/String;
    const-string v8, "com.nxp.nfceeapi.service"

    invoke-virtual {v8, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 109
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfcSeAccessControl;->checkPackageNfcSeAccess(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 110
    const/4 v0, 0x1

    goto :goto_3

    .line 107
    .end local v7    # "uidPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 116
    .end local v4    # "pkgs1":[Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v4, "NfcSeAccess"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Access for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " IS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-eqz v1, :cond_5

    .line 119
    iget-object v4, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_5
    monitor-exit p0

    return v0

    .line 122
    .end local v0    # "access":Z
    .end local v1    # "packageFound":Z
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "pkgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public check(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 133
    .local v0, "access":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 134
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcSeAccessControl;->checkPackageNfcSeAccess(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .line 135
    iget-object v1, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit p0

    return v1

    .line 138
    .end local v0    # "access":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkPackageNfcSeAccess(Ljava/lang/String;)Z
    .locals 13
    .param p1, "pkg"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 154
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x40

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 155
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_0

    .line 156
    return v2

    .line 159
    :cond_0
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 160
    .local v6, "s":Landroid/content/pm/Signature;
    if-nez v6, :cond_1

    .line 161
    goto :goto_2

    .line 163
    :cond_1
    iget-object v7, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 164
    .local v7, "packages":[Ljava/lang/String;
    if-nez v7, :cond_2

    .line 165
    goto :goto_2

    .line 167
    :cond_2
    array-length v8, v7

    const/4 v9, 0x1

    if-nez v8, :cond_3

    .line 169
    const-string v3, "NfcSeAccess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granted NFCSE access to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (wildcard)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v9

    .line 172
    :cond_3
    array-length v8, v7

    move v10, v2

    :goto_1
    if-ge v10, v8, :cond_5

    aget-object v11, v7, v10

    .line 173
    .local v11, "p":Ljava/lang/String;
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 175
    const-string v3, "NfcSeAccess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granted access to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (explicit)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v9

    .line 172
    .end local v11    # "p":Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 159
    .end local v6    # "s":Landroid/content/pm/Signature;
    .end local v7    # "packages":[Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 181
    :cond_6
    iget-boolean v3, p0, Lcom/android/nfc/NfcSeAccessControl;->mDebugPrintSignature:Z

    if-eqz v3, :cond_8

    .line 182
    const-string v3, "NfcSeAccess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "denied NFCSE access for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with signature:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 184
    .restart local v6    # "s":Landroid/content/pm/Signature;
    if-eqz v6, :cond_7

    .line 185
    const-string v7, "NfcSeAccess"

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v6    # "s":Landroid/content/pm/Signature;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 191
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_8
    goto :goto_4

    .line 189
    :catch_0
    move-exception v1

    .line 192
    :goto_4
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 293
    const-string v0, "mNfcSeAccess="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/Signature;

    .line 295
    .local v1, "s":Landroid/content/pm/Signature;
    const-string v4, "\t%s ["

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 296
    iget-object v4, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 297
    .local v4, "ps":[Ljava/lang/String;
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 298
    .local v7, "p":Ljava/lang/String;
    const-string v8, "%s, "

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v7, v9, v2

    invoke-virtual {p2, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 297
    .end local v7    # "p":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 300
    :cond_0
    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    .end local v1    # "s":Landroid/content/pm/Signature;
    .end local v4    # "ps":[Ljava/lang/String;
    goto :goto_0

    .line 302
    :cond_1
    monitor-enter p0

    .line 303
    :try_start_0
    const-string v0, "mNfcSeUidCache="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 305
    .local v1, "uid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 306
    .local v4, "b":Ljava/lang/Boolean;
    const-string v5, "\t%d %s\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object v4, v6, v3

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 307
    .end local v1    # "uid":Ljava/lang/Integer;
    .end local v4    # "b":Ljava/lang/Boolean;
    goto :goto_2

    .line 308
    :cond_2
    monitor-exit p0

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateCache()V
    .locals 1

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcSeAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 144
    monitor-exit p0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method parseNfcSeAccess()Z
    .locals 14

    .line 203
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/nfcse_access.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 205
    .local v1, "reader":Ljava/io/FileReader;
    const/4 v2, 0x0

    move v3, v2

    .line 207
    .local v3, "debug":Z
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 208
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 209
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 210
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 213
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v6, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 215
    .local v7, "signature":Landroid/content/pm/Signature;
    const-string v8, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 217
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 218
    .local v8, "event":I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 219
    .local v9, "tag":Ljava/lang/String;
    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    const-string v11, "signer"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 220
    const/4 v7, 0x0

    .line 221
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 222
    move v10, v2

    .local v10, "i":I
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 223
    const-string v11, "android:signature"

    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 224
    new-instance v11, Landroid/content/pm/Signature;

    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    move-object v7, v11

    .line 225
    goto :goto_2

    .line 222
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 228
    .end local v10    # "i":I
    :cond_1
    :goto_2
    if-nez v7, :cond_2

    .line 229
    const-string v10, "NfcSeAccess"

    const-string v11, "signer tag is missing android:signature attribute, igorning"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    goto :goto_0

    .line 232
    :cond_2
    iget-object v10, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 233
    const-string v10, "NfcSeAccess"

    const-string v11, "duplicate signature, ignoring"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v7, 0x0

    .line 235
    goto :goto_0

    .line 237
    :cond_3
    const/4 v11, 0x3

    if-ne v8, v11, :cond_5

    const-string v11, "signer"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 238
    if-nez v7, :cond_4

    .line 239
    const-string v10, "NfcSeAccess"

    const-string v11, "mis-matched signer tag"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    goto :goto_0

    .line 242
    :cond_4
    iget-object v10, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    new-array v11, v2, [Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 244
    :cond_5
    if-ne v8, v10, :cond_b

    const-string v11, "package"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 245
    if-nez v7, :cond_6

    .line 246
    const-string v10, "NfcSeAccess"

    const-string v11, "ignoring unnested packge tag"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    goto/16 :goto_0

    .line 249
    :cond_6
    const/4 v10, 0x0

    .line 250
    .local v10, "name":Ljava/lang/String;
    move v11, v2

    .local v11, "i":I
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    if-ge v11, v12, :cond_8

    .line 251
    const-string v12, "android:name"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 252
    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 253
    goto :goto_4

    .line 250
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 256
    .end local v11    # "i":I
    :cond_8
    :goto_4
    if-nez v10, :cond_9

    .line 257
    const-string v11, "NfcSeAccess"

    const-string v12, "package missing android:name, ignoring signer group"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v7, 0x0

    .line 259
    goto/16 :goto_0

    .line 262
    :cond_9
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 263
    const-string v11, "NfcSeAccess"

    const-string v12, "duplicate package name in signer group, ignoring"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    goto/16 :goto_0

    .line 266
    :cond_a
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v10    # "name":Ljava/lang/String;
    goto :goto_6

    :cond_b
    if-ne v8, v10, :cond_c

    const-string v10, "debug"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_c

    .line 268
    const/4 v3, 0x1

    goto :goto_6

    .line 269
    :cond_c
    const/4 v10, 0x1

    if-ne v8, v10, :cond_d

    .line 270
    nop

    .line 282
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "signature":Landroid/content/pm/Signature;
    .end local v8    # "event":I
    .end local v9    # "tag":Ljava/lang/String;
    nop

    .line 284
    :goto_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    goto :goto_7

    :catch_0
    move-exception v2

    goto :goto_7

    .line 272
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "signature":Landroid/content/pm/Signature;
    .restart local v8    # "event":I
    :cond_d
    :goto_6
    goto/16 :goto_0

    .line 282
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "signature":Landroid/content/pm/Signature;
    .end local v8    # "event":I
    :catchall_0
    move-exception v2

    goto :goto_8

    .line 278
    :catch_1
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "NfcSeAccess"

    const-string v5, "Failed to load NFCSE access list"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    iget-object v4, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 282
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_e

    goto :goto_5

    .line 276
    :catch_2
    move-exception v2

    .line 277
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v4, "NfcSeAccess"

    const-string v5, "could not find /etc/nfcse_access.xml, no NFCSE access allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_e

    goto :goto_5

    .line 273
    :catch_3
    move-exception v2

    .line 274
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "NfcSeAccess"

    const-string v5, "failed to load NFCSE access list"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    iget-object v4, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_e

    goto :goto_5

    .line 288
    :cond_e
    :goto_7
    const-string v2, "NfcSeAccess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/nfc/NfcSeAccessControl;->mNfcSeAccess:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " signature(s) for NFCSE access"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v3

    .line 282
    :goto_8
    if-eqz v1, :cond_f

    .line 284
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 285
    goto :goto_9

    :catch_4
    move-exception v4

    :cond_f
    :goto_9
    throw v2
.end method
