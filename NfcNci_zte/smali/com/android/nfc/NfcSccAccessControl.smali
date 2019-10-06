.class public Lcom/android/nfc/NfcSccAccessControl;
.super Ljava/lang/Object;
.source "NfcSccAccessControl.java"


# static fields
.field static final DBG:Z = true

.field public static final NFCSCC_ACCESS_PATH:Ljava/lang/String; = "/etc/nfcscc_access.xml"

.field static final TAG:Ljava/lang/String; = "NfcSccAccess"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mDebugPrintSignature:Z

.field final mNfcsccAccess:Ljava/util/HashMap;
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/nfc/NfcSccAccessControl;->mContext:Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcSccAccessControl;->mNfcsccAccess:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcSccAccessControl;->mUidCache:Ljava/util/HashMap;

    .line 71
    invoke-virtual {p0}, Lcom/android/nfc/NfcSccAccessControl;->parseNfcsccAccess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcSccAccessControl;->mDebugPrintSignature:Z

    .line 72
    return-void
.end method


# virtual methods
.method public check(ILjava/lang/String;)Z
    .locals 9
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .line 80
    const-string v0, "NfcSccAccess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-enter p0

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "access":Z
    const/4 v1, 0x0

    .line 86
    .local v1, "packageFound":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcSccAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 87
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "pkgs":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 89
    .local v7, "uidPkg":Ljava/lang/String;
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 90
    const/4 v1, 0x1

    .line 92
    iget-object v4, p0, Lcom/android/nfc/NfcSccAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 93
    .local v4, "cached":Ljava/lang/Boolean;
    if-eqz v4, :cond_0

    .line 94
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    monitor-exit p0

    return v5

    .line 98
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfcSccAccessControl;->checkPackageNfcsccAccess(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 99
    const/4 v0, 0x1

    goto :goto_1

    .line 88
    .end local v4    # "cached":Ljava/lang/Boolean;
    .end local v7    # "uidPkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 108
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "pkgs1":[Ljava/lang/String;
    array-length v6, v4

    :goto_2
    if-ge v5, v6, :cond_4

    aget-object v7, v4, v5

    .line 110
    .restart local v7    # "uidPkg":Ljava/lang/String;
    const-string v8, "com.nxp.nfceeapi.service"

    invoke-virtual {v8, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 111
    invoke-virtual {p0, p2}, Lcom/android/nfc/NfcSccAccessControl;->checkPackageNfcsccAccess(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 112
    const/4 v0, 0x1

    goto :goto_3

    .line 109
    .end local v7    # "uidPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 118
    .end local v4    # "pkgs1":[Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v4, "NfcSccAccess"

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

    .line 119
    if-eqz v1, :cond_5

    .line 121
    iget-object v4, p0, Lcom/android/nfc/NfcSccAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_5
    monitor-exit p0

    return v0

    .line 124
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

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcSccAccessControl;->mUidCache:Ljava/util/HashMap;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 135
    .local v0, "access":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 136
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcSccAccessControl;->checkPackageNfcsccAccess(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .line 137
    iget-object v1, p0, Lcom/android/nfc/NfcSccAccessControl;->mUidCache:Ljava/util/HashMap;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit p0

    return v1

    .line 140
    .end local v0    # "access":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkPackageNfcsccAccess(Ljava/lang/String;)Z
    .locals 13
    .param p1, "pkg"    # Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/android/nfc/NfcSccAccessControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x40

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 157
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_0

    .line 158
    return v2

    .line 161
    :cond_0
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 162
    .local v6, "s":Landroid/content/pm/Signature;
    if-nez v6, :cond_1

    .line 163
    goto :goto_2

    .line 165
    :cond_1
    iget-object v7, p0, Lcom/android/nfc/NfcSccAccessControl;->mNfcsccAccess:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 166
    .local v7, "packages":[Ljava/lang/String;
    if-nez v7, :cond_2

    .line 167
    goto :goto_2

    .line 169
    :cond_2
    array-length v8, v7

    const/4 v9, 0x1

    if-nez v8, :cond_3

    .line 171
    const-string v3, "NfcSccAccess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granted NFCSCC access to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (wildcard)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v9

    .line 174
    :cond_3
    array-length v8, v7

    move v10, v2

    :goto_1
    if-ge v10, v8, :cond_5

    aget-object v11, v7, v10

    .line 175
    .local v11, "p":Ljava/lang/String;
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 177
    const-string v3, "NfcSccAccess"

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

    .line 178
    return v9

    .line 174
    .end local v11    # "p":Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 161
    .end local v6    # "s":Landroid/content/pm/Signature;
    .end local v7    # "packages":[Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 183
    :cond_6
    iget-boolean v3, p0, Lcom/android/nfc/NfcSccAccessControl;->mDebugPrintSignature:Z

    if-eqz v3, :cond_8

    .line 184
    const-string v3, "NfcSccAccess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "denied NFCSCC access for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with signature:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_8

    aget-object v6, v3, v5

    .line 186
    .restart local v6    # "s":Landroid/content/pm/Signature;
    if-eqz v6, :cond_7

    .line 187
    const-string v7, "NfcSccAccess"

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v6    # "s":Landroid/content/pm/Signature;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 193
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_8
    goto :goto_4

    .line 191
    :catch_0
    move-exception v1

    .line 194
    :goto_4
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 295
    const-string v0, "mNfcsccAccess="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/nfc/NfcSccAccessControl;->mNfcsccAccess:Ljava/util/HashMap;

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

    .line 297
    .local v1, "s":Landroid/content/pm/Signature;
    const-string v4, "\t%s ["

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 298
    iget-object v4, p0, Lcom/android/nfc/NfcSccAccessControl;->mNfcsccAccess:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 299
    .local v4, "ps":[Ljava/lang/String;
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 300
    .local v7, "p":Ljava/lang/String;
    const-string v8, "%s, "

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v7, v9, v2

    invoke-virtual {p2, v8, v9}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 299
    .end local v7    # "p":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 302
    :cond_0
    const-string v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    .end local v1    # "s":Landroid/content/pm/Signature;
    .end local v4    # "ps":[Ljava/lang/String;
    goto :goto_0

    .line 304
    :cond_1
    monitor-enter p0

    .line 305
    :try_start_0
    const-string v0, "mNfcsccUidCache="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/nfc/NfcSccAccessControl;->mUidCache:Ljava/util/HashMap;

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

    .line 307
    .local v1, "uid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/nfc/NfcSccAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 308
    .local v4, "b":Ljava/lang/Boolean;
    const-string v5, "\t%d %s\n"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object v4, v6, v3

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 309
    .end local v1    # "uid":Ljava/lang/Integer;
    .end local v4    # "b":Ljava/lang/Boolean;
    goto :goto_2

    .line 310
    :cond_2
    monitor-exit p0

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateCache()V
    .locals 1

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcSccAccessControl;->mUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 146
    monitor-exit p0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method parseNfcsccAccess()Z
    .locals 14

    .line 205
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/etc/nfcscc_access.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 207
    .local v1, "reader":Ljava/io/FileReader;
    const/4 v2, 0x0

    move v3, v2

    .line 209
    .local v3, "debug":Z
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 210
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 211
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 212
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 215
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v6, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 217
    .local v7, "signature":Landroid/content/pm/Signature;
    const-string v8, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v5, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 219
    :goto_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 220
    .local v8, "event":I
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "tag":Ljava/lang/String;
    const/4 v10, 0x2

    if-ne v8, v10, :cond_3

    const-string v11, "signer"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 222
    const/4 v7, 0x0

    .line 223
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 224
    move v10, v2

    .local v10, "i":I
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 225
    const-string v11, "android:signature"

    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 226
    new-instance v11, Landroid/content/pm/Signature;

    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    move-object v7, v11

    .line 227
    goto :goto_2

    .line 224
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 230
    .end local v10    # "i":I
    :cond_1
    :goto_2
    if-nez v7, :cond_2

    .line 231
    const-string v10, "NfcSccAccess"

    const-string v11, "signer tag is missing android:signature attribute, igorning"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    goto :goto_0

    .line 234
    :cond_2
    iget-object v10, p0, Lcom/android/nfc/NfcSccAccessControl;->mNfcsccAccess:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 235
    const-string v10, "NfcSccAccess"

    const-string v11, "duplicate signature, ignoring"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v7, 0x0

    .line 237
    goto :goto_0

    .line 239
    :cond_3
    const/4 v11, 0x3

    if-ne v8, v11, :cond_5

    const-string v11, "signer"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 240
    if-nez v7, :cond_4

    .line 241
    const-string v10, "NfcSccAccess"

    const-string v11, "mis-matched signer tag"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    goto :goto_0

    .line 244
    :cond_4
    iget-object v10, p0, Lcom/android/nfc/NfcSccAccessControl;->mNfcsccAccess:Ljava/util/HashMap;

    new-array v11, v2, [Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 246
    :cond_5
    if-ne v8, v10, :cond_b

    const-string v11, "package"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 247
    if-nez v7, :cond_6

    .line 248
    const-string v10, "NfcSccAccess"

    const-string v11, "ignoring unnested packge tag"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    goto/16 :goto_0

    .line 251
    :cond_6
    const/4 v10, 0x0

    .line 252
    .local v10, "name":Ljava/lang/String;
    move v11, v2

    .local v11, "i":I
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    if-ge v11, v12, :cond_8

    .line 253
    const-string v12, "android:name"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 254
    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 255
    goto :goto_4

    .line 252
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 258
    .end local v11    # "i":I
    :cond_8
    :goto_4
    if-nez v10, :cond_9

    .line 259
    const-string v11, "NfcSccAccess"

    const-string v12, "package missing android:name, ignoring signer group"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v7, 0x0

    .line 261
    goto/16 :goto_0

    .line 264
    :cond_9
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 265
    const-string v11, "NfcSccAccess"

    const-string v12, "duplicate package name in signer group, ignoring"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    goto/16 :goto_0

    .line 268
    :cond_a
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
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

    .line 270
    const/4 v3, 0x1

    goto :goto_6

    .line 271
    :cond_c
    const/4 v10, 0x1

    if-ne v8, v10, :cond_d

    .line 272
    nop

    .line 284
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "signature":Landroid/content/pm/Signature;
    .end local v8    # "event":I
    .end local v9    # "tag":Ljava/lang/String;
    nop

    .line 286
    :goto_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    goto :goto_7

    :catch_0
    move-exception v2

    goto :goto_7

    .line 274
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "signature":Landroid/content/pm/Signature;
    .restart local v8    # "event":I
    :cond_d
    :goto_6
    goto/16 :goto_0

    .line 284
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "signature":Landroid/content/pm/Signature;
    .end local v8    # "event":I
    :catchall_0
    move-exception v2

    goto :goto_8

    .line 280
    :catch_1
    move-exception v2

    .line 281
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "NfcSccAccess"

    const-string v5, "Failed to load NFCSCC access list"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    iget-object v4, p0, Lcom/android/nfc/NfcSccAccessControl;->mNfcsccAccess:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 284
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_e

    goto :goto_5

    .line 278
    :catch_2
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v4, "NfcSccAccess"

    const-string v5, "could not find /etc/nfcscc_access.xml, no NFCSCC access allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_e

    goto :goto_5

    .line 275
    :catch_3
    move-exception v2

    .line 276
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "NfcSccAccess"

    const-string v5, "failed to load NFCSCC access list"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    iget-object v4, p0, Lcom/android/nfc/NfcSccAccessControl;->mNfcsccAccess:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_e

    goto :goto_5

    .line 290
    :cond_e
    :goto_7
    const-string v2, "NfcSccAccess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/nfc/NfcSccAccessControl;->mNfcsccAccess:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " signature(s) for NFCSCC access"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return v3

    .line 284
    :goto_8
    if-eqz v1, :cond_f

    .line 286
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 287
    goto :goto_9

    :catch_4
    move-exception v4

    :cond_f
    :goto_9
    throw v2
.end method
